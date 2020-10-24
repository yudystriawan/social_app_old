// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'application/auth/auth_bloc.dart';
import 'infrastructure/auth/auth_repository.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'domain/auth/i_auth_repository.dart';
import 'domain/user/i_user_repository.dart';
import 'application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'application/user/form/user_form_bloc.dart';
import 'infrastructure/user/user_repository.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.factory<IAuthRepository>(() => AuthRepository(
        get<FirebaseAuth>(),
        get<GoogleSignIn>(),
        get<FirebaseFirestore>(),
      ));
  gh.factory<IUserRepository>(() => UserRepository(get<FirebaseFirestore>()));
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthRepository>()));
  gh.factory<UserFormBloc>(() => UserFormBloc(get<IUserRepository>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
