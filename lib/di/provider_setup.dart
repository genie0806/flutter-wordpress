import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:virtue_test/data/data_source/remote/create_user_api.dart';
import 'package:virtue_test/data/data_source/remote/simple_post_api.dart';
import 'package:virtue_test/data/data_source/remote/simple_post_list_api.dart';
import 'package:virtue_test/data/data_source/remote/social_login_api.dart';
import 'package:virtue_test/data/respository/create_user_repository_impl.dart';
import 'package:virtue_test/data/respository/simple_post_list_repository_impl.dart';
import 'package:virtue_test/data/respository/simple_post_repository_impl.dart';
import 'package:virtue_test/data/respository/social_login_repository_impl.dart';
import 'package:virtue_test/domain/use_case/create_user_use_case.dart/create_user_use_cases.dart';
import 'package:virtue_test/domain/use_case/create_user_use_case.dart/post_register_user_use_case.dart';
import 'package:virtue_test/domain/use_case/login_use_case.dart/google_social_login.dart';
import 'package:virtue_test/domain/use_case/login_use_case.dart/goole_social_logout.dart';
import 'package:virtue_test/domain/use_case/login_use_case.dart/login_use_cases.dart';
import 'package:virtue_test/domain/use_case/post_use_case/get_post_list_use_case.dart';
import 'package:virtue_test/domain/use_case/post_use_case/get_post_use_case.dart';
import 'package:virtue_test/domain/use_case/post_use_case/post_use_cases.dart';
import 'package:virtue_test/presentation/create_user_page/create_user_page_view_model.dart';
import 'package:virtue_test/presentation/login_page/login_page_view_model.dart';
import 'package:virtue_test/presentation/post_list_page/post_list_page_view_model.dart';
import 'package:virtue_test/presentation/post_page/post_page_view_model.dart';

Future<List<SingleChildWidget>> getProviders() async {
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
  final loginUseCases = LoginUseCases(
    getSocialLogin: GoogleSocialLogin(loginRepository),
    getSocialLogout: GoogleSocialLogout(loginRepository),
  );

  //final createUserData = CreateUserAPi();
  //final createUserRepository = CreateUserRepositoryImpl(createUserData);
  //final createUserUseCases = CreateUserUseCases(
  //    postRegisterUserUseCase: PostRegisterUserUseCase(createUserRepository));

  return [
    //Post의 관련된 DI
    ChangeNotifierProvider<PostPageViewModel>(
        create: (context) => PostPageViewModel(postUseCases)),
    ChangeNotifierProvider<PostListPageViewModel>(
        create: (context) => PostListPageViewModel(postUseCases)),
    //Login의 관련된 DI
    ChangeNotifierProvider<LoginViewModel>(
        create: (context) => LoginViewModel(loginUseCases)),
    //ChangeNotifierProvider<CreateUserPageViewModel>(
    //    create: (context) => CreateUserPageViewModel(createUserUseCases)),
  ];
}
