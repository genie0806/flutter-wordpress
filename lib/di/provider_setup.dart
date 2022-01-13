import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:virtue_test/data/data_source/local/secure_data_source.dart';
import 'package:virtue_test/data/data_source/remote/comment_get_api.dart';
import 'package:virtue_test/data/data_source/remote/create_comment.api.dart';
import 'package:virtue_test/data/data_source/remote/create_user_api.dart';
import 'package:virtue_test/data/data_source/remote/login_user_api.dart';
import 'package:virtue_test/data/data_source/remote/simple_post_api.dart';
import 'package:virtue_test/data/data_source/remote/simple_post_list_api.dart';
import 'package:virtue_test/data/data_source/remote/social_login_api.dart';
import 'package:virtue_test/data/data_source/remote/user_me_api.dart';
import 'package:virtue_test/data/respository/app_config_Repository_impl.dart';
import 'package:virtue_test/data/respository/comment_get_repository_impl.dart';
import 'package:virtue_test/data/respository/create_comment_repository_impl.dart';
import 'package:virtue_test/data/respository/create_user_repository_impl.dart';
import 'package:virtue_test/data/respository/login_user_repository_impl.dart';
import 'package:virtue_test/data/respository/simple_post_list_repository_impl.dart';
import 'package:virtue_test/data/respository/simple_post_repository_impl.dart';
import 'package:virtue_test/data/respository/social_login_repository_impl.dart';
import 'package:virtue_test/data/respository/user_me_repostiory_impl.dart';
import 'package:virtue_test/domain/repository/app_config_repository.dart';
import 'package:virtue_test/domain/use_case/comment_get_use_case/comment_use_cases.dart';
import 'package:virtue_test/domain/use_case/comment_get_use_case/create_comment_use_case.dart';
import 'package:virtue_test/domain/use_case/comment_get_use_case/get_comment_use_case.dart';
import 'package:virtue_test/domain/use_case/create_user_use_case.dart/create_user_use_cases.dart';
import 'package:virtue_test/domain/use_case/create_user_use_case.dart/post_register_user_use_case.dart';
import 'package:virtue_test/domain/use_case/login_user_use_case.dart/login_user_use_cases.dart';
import 'package:virtue_test/domain/use_case/login_user_use_case.dart/get_login_user_use_case.dart';
import 'package:virtue_test/domain/use_case/social_login_use_case.dart/google_social_login_user_case.dart';
import 'package:virtue_test/domain/use_case/social_login_use_case.dart/goole_social_logout_use_case.dart';
import 'package:virtue_test/domain/use_case/social_login_use_case.dart/login_use_cases.dart';
import 'package:virtue_test/domain/use_case/post_use_case/get_post_list_use_case.dart';
import 'package:virtue_test/domain/use_case/post_use_case/get_post_use_case.dart';
import 'package:virtue_test/domain/use_case/post_use_case/post_use_cases.dart';
import 'package:virtue_test/domain/use_case/user_me_use_case/get_login_status_use_case.dart';
import 'package:virtue_test/domain/use_case/user_me_use_case/get_my_profile_use_case.dart';
import 'package:virtue_test/domain/use_case/user_me_use_case/get_user_me_use_case.dart';
import 'package:virtue_test/domain/use_case/user_me_use_case/user_me_use_cases.dart';
import 'package:virtue_test/presentation/comment_page/comment_page_view_model.dart';
import 'package:virtue_test/presentation/create_user_page/create_user_page_view_model.dart';
import 'package:virtue_test/presentation/login_user_page/login_user_view_model.dart';
import 'package:virtue_test/presentation/social_login_page/social_login_page_view_model.dart';
import 'package:virtue_test/presentation/post_list_page/post_list_page_view_model.dart';
import 'package:virtue_test/presentation/post_page/post_page_view_model.dart';
import 'package:virtue_test/presentation/user_me_data/user_me_view_model.dart';

Future<List<SingleChildWidget>> getProviders() async {
  //Secure Storage의 관한 DI
  final secureDataSource = SecureDataSource();
  final appConfingRepository = AppConfigRepositoryImpl(secureDataSource);

  //Post의 관련된 DI
  final dataSource = SimplePostApi();
  final listDataSource = SimplePostListApi();
  final postRepository = SimplePostRepositoryImpl(dataSource);
  final listRepository = SimpleLPostListRepositoryImpl(listDataSource);
  final postUseCases = PostUseCases(
      getPostList: GetPostListsUseCase(listRepository),
      getPost: GetPostUseCase(postRepository));
  //Login의 관련된 DI
  final socialLoginData = SocialLoginApi();
  final loginRepository = SocialLoginRepositoryImpl(socialLoginData);
  final loginUseCases = SocialLoginUseCases(
    getSocialLogin:
        GoogleSocialLoginUseCase(loginRepository, appConfingRepository),
    getLoginStatusUseCase: GetLoginStatusUseCase(appConfingRepository),
    getSocialLogout: GoogleSocialLogoutUseCase(loginRepository),
  );
//CreateUser 관련된 DI
  final createUserData = CreateUserAPi();
  final createUserRepository = CreateUserRepositoryImpl(createUserData);
  final createUserUseCases = CreateUserUseCases(
      postRegisterUserUseCase: PostRegisterUserUseCase(createUserRepository));

//LoginUser 관련된 DI

  final loginUserData = LoginUserApi();
  final loginUserRepository = LoginUserRepositoryImpl(loginUserData);
  final loginUserUseCases = LoginUserUseCases(
      getLoginUserUseCase:
          GetLoginUserUseCase(loginUserRepository, appConfingRepository));

//Comment에 관련된 DI
  final commentGetData = CommentGetApi();
  final createCommentData = CreateCommentApi();
  final commentGetRepository = CommentGetRepositoryImpl(commentGetData);
  final createCommentRepository =
      CreateCommentRepositoryImpl(createCommentData);
  final commentUseCases = CommentGetUseCases(
      getCommentUseCase: GetCommentUseCase(commentGetRepository),
      createCommentUseCase: CreateCommentUseCase(createCommentRepository));

//UserMe에 관련된 DI
  final userMeData = UserMeApi();
  final userMeRepository = UserMeRepositoryImpl(userMeData);
  final userMeUseCases = UserMeUseCases(
      getUserMeUseCase: GetUserMeUseCase(userMeRepository),
      getMyProfileUseCase: GetMyProfileUseCase(
          loginUserRepository, userMeRepository, appConfingRepository));

  return [
    //Post의 관련된 DI
    ChangeNotifierProvider<PostPageViewModel>(
        create: (context) => PostPageViewModel(postUseCases)),
    ChangeNotifierProvider<PostListPageViewModel>(
        create: (context) => PostListPageViewModel(postUseCases)),
    //Login의 관련된 DI
    ChangeNotifierProvider<SocialLoginViewModel>(
        create: (context) => SocialLoginViewModel(loginUseCases)),
    ChangeNotifierProvider<CreateUserPageViewModel>(
        create: (context) =>
            CreateUserPageViewModel(useCases: createUserUseCases)),
    ChangeNotifierProvider<LoginUserViewModel>(
        create: (context) => LoginUserViewModel(loginUserUseCases)),
    ChangeNotifierProvider<CommentPageViewModel>(
        create: (context) => CommentPageViewModel(commentUseCases)),
    ChangeNotifierProvider<UserMeViewModel>(
        create: (context) => UserMeViewModel(userMeUseCases)),
  ];
}
