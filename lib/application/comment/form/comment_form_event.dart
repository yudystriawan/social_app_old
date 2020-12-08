part of 'comment_form_bloc.dart';

@freezed
abstract class CommentFormEvent with _$CommentFormEvent {
  const factory CommentFormEvent.initialized(
      Option<CommentDomain> initialComment) = _Initialized;
  const factory CommentFormEvent.bodyChanged(String bodyStr) = _BodyChanged;
  const factory CommentFormEvent.usernameChanged(String usernameStr) =
      _UsernameChanged;
  const factory CommentFormEvent.avatarUrlChanged(String url) =
      _AvatarUrlChanged;
  const factory CommentFormEvent.userIdChanged(String userId) = _UserIdChanged;
  const factory CommentFormEvent.submit(PostDomain post) = _Submit;
}
