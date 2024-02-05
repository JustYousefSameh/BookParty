// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i17;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i14;
import 'application/room/room_bloc.dart' as _i13;
import 'application/storage/storage_bloc/storage_bloc.dart' as _i15;
import 'application/storage/storage_watcher_bloc/storage_watcher_bloc.dart'
    as _i16;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'domain/room/i_room_repository.dart' as _i9;
import 'domain/storage/i_storage_repository.dart' as _i11;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i8;
import 'infrastructure/core/firebase_injectable_module.dart' as _i18;
import 'infrastructure/room/ws_room_repository.dart' as _i10;
import 'infrastructure/storage/firebase_storage_repository.dart' as _i12;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.lazySingleton<_i3.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i4.FirebaseFirestore>(
        () => firebaseInjectableModule.firebaseFirestore);
    gh.lazySingleton<_i5.FirebaseStorage>(
        () => firebaseInjectableModule.firebaseStorage);
    gh.lazySingleton<_i6.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignIn);
    gh.lazySingleton<_i7.IAuthFacade>(() => _i8.FirebaseAuthFacade(
          gh<_i3.FirebaseAuth>(),
          gh<_i6.GoogleSignIn>(),
        ));
    gh.lazySingleton<_i9.IRoomRepository>(
        () => _i10.WebSocketRoomRepository(gh<_i7.IAuthFacade>()));
    gh.lazySingleton<_i11.IStorageRepository>(() => _i12.FirebaseStorageFacade(
          firebaseStorge: gh<_i5.FirebaseStorage>(),
          authFacade: gh<_i7.IAuthFacade>(),
        ));
    gh.lazySingleton<_i13.RoomBloc>(() => _i13.RoomBloc(
          gh<_i9.IRoomRepository>(),
          gh<_i7.IAuthFacade>(),
        ));
    gh.lazySingleton<_i14.SignInFormBloc>(
        () => _i14.SignInFormBloc(gh<_i7.IAuthFacade>()));
    gh.lazySingleton<_i15.StorageBloc>(
        () => _i15.StorageBloc(gh<_i11.IStorageRepository>()));
    gh.lazySingleton<_i16.StorageWatcherBloc>(
        () => _i16.StorageWatcherBloc(gh<_i11.IStorageRepository>()));
    gh.lazySingleton<_i17.AuthBloc>(() => _i17.AuthBloc(gh<_i7.IAuthFacade>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i18.FirebaseInjectableModule {}
