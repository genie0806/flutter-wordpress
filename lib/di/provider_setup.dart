import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:virtue_test/data/data_source/remote/simple_post_api.dart';
import 'package:virtue_test/data/data_source/remote/simple_post_list_api.dart';
import 'package:virtue_test/data/respository/simple_post_list_repository_impl.dart';
import 'package:virtue_test/data/respository/simple_post_repository_impl.dart';
import 'package:virtue_test/domain/use_case/post_use_case/get_post_list_use_case.dart';
import 'package:virtue_test/domain/use_case/post_use_case/get_post_use_case.dart';
import 'package:virtue_test/domain/use_case/post_use_case/post_use_cases.dart';
import 'package:virtue_test/presentation/post_list_page/post_list_page_view_model.dart';
import 'package:virtue_test/presentation/postpage/post_page_view_model.dart';

Future<List<SingleChildWidget>> getProviders() async {
  final dataSource = SimplePostApi();
  final listDataSource = SimplePostListApi();
  final postRepository = SimplePostRepositoryImpl(dataSource);
  final listRepository = SimpleLPostListRepositoryImpl(listDataSource);
  final useCases = PostUseCases(
      getPostList: GetPostListsUseCase(listRepository),
      getPost: GetPostUseCase(postRepository));

  return [
    ChangeNotifierProvider<PostPageViewModel>(
        create: (context) => PostPageViewModel(useCases)),
    ChangeNotifierProvider<PostListPageViewModel>(
        create: (context) => PostListPageViewModel(useCases)),
  ];
}
