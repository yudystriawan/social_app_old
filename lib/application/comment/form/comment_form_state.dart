part of 'comment_form_bloc.dart';

@freezed
abstract class CommentFormState with _$CommentFormState {
  const factory CommentFormState({
    @required CommentDomain comment,
    @required bool isSubmitting,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required Option<Either<CommentFailure, Unit>> failureOrSuccessOption,
  }) = _CommentFormState;

  factory CommentFormState.initial() => CommentFormState(
        comment: CommentDomain.empty(),
        isSubmitting: false,
        showErrorMessages: false,
        isEditing: false,
        failureOrSuccessOption: none(),
      );
}
