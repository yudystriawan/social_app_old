import 'package:auto_route/auto_route_annotations.dart';
import 'package:my_social_app/presentation/pages/comment/comment_page.dart';
import 'package:my_social_app/presentation/pages/home/home_page.dart';
import 'package:my_social_app/presentation/pages/posts/detail/post_detail_page.dart';
import 'package:my_social_app/presentation/pages/posts/form/post_form_page.dart';
import 'package:my_social_app/presentation/pages/profile/edit/edit_page.dart';
import 'package:my_social_app/presentation/pages/sign_in/sign_in_page.dart';
import 'package:my_social_app/presentation/pages/splash/splash_page.dart';

@AdaptiveAutoRouter(
  routes: [
    AdaptiveRoute(page: SplashPage, initial: true),
    AdaptiveRoute(page: SignInPage),
    AdaptiveRoute(page: HomePage),
    AdaptiveRoute(page: EditProfilePage),
    AdaptiveRoute(page: PostFormPage),
    AdaptiveRoute(page: CommentPage),
    AdaptiveRoute(page: PostDetailPage),
  ],
)
class $Router {}
