import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:test_virtue/data/data_source/remote/simple_post_api.dart';
import 'package:test_virtue/data/respository/simple_post_repositoty_impl.dart';
import 'package:test_virtue/domain/repository/repository.dart';
import 'package:test_virtue/domain/use_case/post_use_case/get_posts_use_case.dart';
import 'package:test_virtue/domain/use_case/post_use_case/post_use_cases.dart';
import 'package:test_virtue/presentation/postpage/post_page_view_model.dart';

// 2. 다른 클래스에 의존하지 않는 Model
List<SingleChildWidget> independentModels = [
  Provider<SimplePostApi>(
    create: (context) => SimplePostApi(),
  ),
];

// 3. 2에 등록한 클래스에 의존하는 Model

List<SingleChildWidget> dependentModels = [
  ProxyProvider<SimplePostApi, PostRepository>(
    update: (context, api, _) => SimplePostRepositoryImpl(api),
  ),
  ProxyProvider<PostRepository, PostUseCases>(
    update: (context, repository, _) =>
        PostUseCases(getPost: GetPostsUseCase(repository)),
  ),
];

// 4. ViewModels
// View가 사용. 2, 3에 등록한 클래스를 사용할 수 있음

List<SingleChildWidget> viewModels = [
  ChangeNotifierProvider<PostPageViewModel>(
    create: (context) => PostPageViewModel(context.read<PostUseCases>()),
  ),
];
