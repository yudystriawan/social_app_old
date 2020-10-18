// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'application/auth/auth_bloc.dart';
import 'infrastructure/auth/auth_repository.dart';
import 'domain/auth/i_auth_repository.dart';
import 'application/auth/sign_in_form/sign_in_form_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.factory<IAuthRepository>(() => AuthRepository());
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthRepository>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthRepository>()));
  return get;
}
