part of 'post_form_bloc.dart';

@freezed
abstract class PostFormEvent with _$PostFormEvent {
  const factory PostFormEvent.initialized(Option<PostDomain> initialPost) =
      _Initialized;
  const factory PostFormEvent.userIdChanged(String userIdStr) = _UserIdChanged;
  const factory PostFormEvent.fileImageChanged(Option<File> imageFile) =
      _FileImageChanged;
  const factory PostFormEvent.imageChanged(String imagePath) = _ImageChanged;
  const factory PostFormEvent.bodyChanged(String bodyStr) = _BodyChanged;
  const factory PostFormEvent.locationChanged(String locationStr) =
      _LocationChanged;
  const factory PostFormEvent.submit() = _Submit;
}
