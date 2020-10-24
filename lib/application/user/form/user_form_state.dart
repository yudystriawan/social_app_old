part of 'user_form_bloc.dart';

@freezed
abstract class UserFormState with _$UserFormState {
  const factory UserFormState({
    @required UserDomain user,
    @required bool isEditing,
    @required bool isSubmitting,
    @required bool showErrorMessages,
    @required Option<Either<UserFailure, Unit>> failureOrSuccessOption,
  }) = _UserFormState;

  factory UserFormState.initial() => UserFormState(
        user: UserDomain.empty(),
        isEditing: false,
        isSubmitting: false,
        showErrorMessages: false,
        failureOrSuccessOption: none(),
      );
}
