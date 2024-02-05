import 'dart:io';

import 'package:bookparty/domain/storage/i_storage_repository.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:injectable/injectable.dart';

part 'storage_event.dart';

part 'storage_state.dart';

part 'storage_bloc.freezed.dart';

@lazySingleton
class StorageBloc extends Bloc<StorageEvent, StorageState> {
  final IStorageRepository _storageRepository;

  StorageBloc(this._storageRepository) : super(const StorageStateInitial()) {
    on<CreateBook>((event, emit) async {
      emit(const StorageStateLoadInProgress());

      final failureOrSuccess = await _storageRepository.createBook(event.file);

      failureOrSuccess.fold(
        (failure) => emit(StorageStateUploadFailure(failure.error)),
        (success) => emit(const StorageStateUploadSuccess()),
      );
    });

    on<DeleteBook>(
      (event, emit) async {
        emit(const StorageState.loadInProgress());

        final failureOrSuccess =
            await _storageRepository.removeBook(event.name);

        failureOrSuccess.fold(
          (failure) => emit(StorageStateDeleteFailure(failure.error)),
          (success) => emit(const StorageStateDeleteSuccess()),
        );
      },
    );
  }
}
