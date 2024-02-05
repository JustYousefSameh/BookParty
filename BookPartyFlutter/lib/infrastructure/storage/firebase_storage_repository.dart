import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';
import 'package:bookparty/domain/core/value_objects.dart';
import 'package:bookparty/domain/storage/book.dart';
import 'package:bookparty/domain/storage/storage_failure.dart';
import 'package:bookparty/infrastructure/auth/firebase_user_mapper.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:pdf_render/pdf_render.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/storage/i_storage_repository.dart';

@LazySingleton(as: IStorageRepository)
class FirebaseStorageFacade implements IStorageRepository {
  final FirebaseStorage _firebaseStorage;
  final IAuthFacade _authFacade;

  Future<String> get userID async => await _authFacade.getSignedInUser().then(
      (value) => value.getOrElse(() => throw Exception()).id.getOrCrash());

  FirebaseStorageFacade({
    required FirebaseStorage firebaseStorge,
    required IAuthFacade authFacade,
  })  : _firebaseStorage = firebaseStorge,
        _authFacade = authFacade;

  @override
  Future<Either<StorageFailure, Unit>> createBook(File file) async {
    try {
      UploadTask fileUploadTask = _firebaseStorage
          .ref()
          .child('${await userID}/books/${file.name}')
          .putFile(file);

      await fileUploadTask;
      await _firebaseStorage
          .ref()
          .child('${await userID}/thumbnails/${file.name.removeExtenstion}.png')
          .putData(await _generateThumbnail(file.path));

      return right(unit);
    } on FirebaseException catch (e) {
      return left(StorageFailure.serverError(e.code));
    }
  }

  @override
  Future<Either<StorageFailure, Unit>> getBook({required UniqueId id}) {
    // TODO: implement getBook
    throw UnimplementedError();
  }

  @override
  Future<Either<StorageFailure, Unit>> removeBook(String name) async {
    try {
      await _firebaseStorage
          .ref()
          .child('${await userID}/books/$name.pdf')
          .delete();
      await _firebaseStorage
          .ref()
          .child('${await userID}/thumbnails/$name.png')
          .delete();

      return right(unit);
    } on FirebaseException catch (e) {
      return left(StorageFailure.serverError(e.code));
    }
  }

  @override
  Future<Either<StorageFailure, List<Book>>> watchAll() async {
    var refrence =
        await _firebaseStorage.ref().child('${await userID}/books/').listAll();

    List<Book> books = [];
    for (var item in refrence.items) {
      var fileName = item.name.removeExtenstion;
      var thumbnailPath = _firebaseStorage
          .ref()
          .child('${await userID}/thumbnails/$fileName.png');

      var thumbnailURL = await thumbnailPath.getDownloadURL();

      books.add(
        Book(
          title: fileName,
          author: 'author',
          description: 'description',
          thumbnail: thumbnailURL,
        ),
      );
    }

    return right(books);
  }

  Future<Uint8List> _generateThumbnail(String pdfPath) async {
    final pdfDocument = await PdfDocument.openFile(pdfPath);
    final pdfPage =
        await pdfDocument.getPage(1); // Get the first page (adjust as needed)

    // Render the PDF page to an image
    final pdfPageImage = await pdfPage.render(
      width: pdfPage.width.toInt(),
      height: pdfPage.height.toInt(),
    );

    // Convert the image to bytes
    final ByteData byteData = await pdfPageImage
        .createImageIfNotAvailable()
        .then((value) async =>
            await value.toByteData(format: ImageByteFormat.png) as ByteData);
    final Uint8List pngBytes = byteData.buffer.asUint8List();

    pdfPageImage.dispose();
    await pdfDocument.dispose();

    return pngBytes;
  }
}
