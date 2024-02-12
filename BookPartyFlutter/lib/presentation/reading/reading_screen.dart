import 'package:bookparty/application/room/room_bloc.dart';
import 'package:bookparty/domain/storage/book.dart';
import 'package:bookparty/injection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf_render/pdf_render_widgets.dart';

class PdfViewScreen extends StatefulWidget {
  const PdfViewScreen({super.key});

  @override
  State<PdfViewScreen> createState() => _PdfViewScreenState();
}

class _PdfViewScreenState extends State<PdfViewScreen>
    with TickerProviderStateMixin {
  Future<String> _getFile(Book book) async {
    final dir = await getExternalStorageDirectory();
    final filename = '${book.title}.pdf';
    final filePath = '${dir!.path}/$filename';

    return filePath;
  }

  late Animation<Offset> animation;

  _fakeSwipe() {
    print('Draggig');
    GestureBinding.instance
        .handlePointerEvent(const PointerDownEvent(pointer: 0));

    GestureBinding.instance.handlePointerEvent(const PointerMoveEvent(
      pointer: 0,
      delta: Offset(0, 500),
    ));

    GestureBinding.instance.handlePointerEvent(
      const PointerUpEvent(pointer: 0),
    );
  }

  PdfViewerController pdfController = PdfViewerController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomBloc, RoomState>(
      bloc: getIt<RoomBloc>(),
      builder: (context, state) {
        switch (state) {
          case RoomStarted(:final room):
            return Scaffold(
              floatingActionButton: FloatingActionButton(onPressed: () {
                pdfController.goToPointInPage(
                    pageNumber: pdfController.currentPageNumber + 1);
              }),
              body: FutureBuilder<String>(
                future: _getFile(room.book),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return GestureDetector(
                      child: PdfViewer.openFile(
                        snapshot.data!,
                        viewerController: pdfController,
                        params: const PdfViewerParams(padding: 1),
                      ),
                    );
                    // return PDFView(
                    //   gestureRecognizers: null,
                    //   filePath: snapshot.data,
                    //   pageSnap: true,
                    //   enableSwipe: true,
                    //   onViewCreated: (controller) {
                    //     pdfController = controller;
                    //   },
                    //   onPageChanged: (page, total) {
                    //     // _fakeSwipe();
                    //   },
                    // );
                  } else {
                    return const CircularProgressIndicator();
                  }
                },
              ),
            );

          default:
            return const CircularProgressIndicator();
        }
      },
    );
  }
}
