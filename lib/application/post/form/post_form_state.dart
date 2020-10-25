part of 'post_form_bloc.dart';

@freezed
abstract class PostFormState with _$PostFormState {
  const factory PostFormState({
    @required PostDomain post,
    @required bool isSubmitting,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required Option<Either<PostFailure, Unit>> failureOrSuccessOption,
  }) = _PostFormState;

  factory PostFormState.initial() => PostFormState(
        post: PostDomain.empty(),
        isSubmitting: false,
        showErrorMessages: false,
        isEditing: false,
        failureOrSuccessOption: none(),
      );
}
