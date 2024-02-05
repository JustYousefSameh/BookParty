import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/storage/book.dart';
import '../../../domain/storage/i_storage_repository.dart';

part 'storage_watcher_event.dart';
part 'storage_watcher_state.dart';
part 'storage_watcher_bloc.freezed.dart';

@lazySingleton
class StorageWatcherBloc
    extends Bloc<StorageWatcherEvent, StorageWatcherState> {
  final IStorageRepository _storageRepository;

  StorageWatcherBloc(this._storageRepository)
      : super(const StorageWatcherInitial()) {
    on<_ListBooks>(
      (event, emit) async {
        emit(const StorageWatcherState.loading());

        await _storageRepository.watchAll().then(
              (value) => value.fold(
                (l) => emit(
                  StorageWatcherState.error(l.error),
                ),
                (r) => emit(
                  StorageWatcherState.loaded(r),
                ),
              ),
            );
      },
    );
  }
}
