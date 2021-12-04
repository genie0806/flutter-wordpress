import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:test_virtue/data/data_source/remote/simple_post_api.dart';
import 'package:test_virtue/data/data_source/remote/simple_post_list_api.dart';
import 'package:test_virtue/data/respository/simple_post_repositoty_impl.dart';
import 'package:test_virtue/domain/repository/repository.dart';
import 'package:test_virtue/domain/use_case/post_use_case/get_post_list_use_case.dart';
import 'package:test_virtue/domain/use_case/post_use_case/get_post_use_case.dart';
import 'package:test_virtue/domain/use_case/post_use_case/post_use_cases.dart';
import 'package:test_virtue/presentation/postpage/post_page_view_model.dart';
import 'package:http/http.dart' as http;

Future<List<SingleChildWidget>> getProviders() async {
  final dataSource = SimplePostApi();
  final repository = SimplePostRepositoryImpl(dataSource);
  final useCases = PostUseCases(
      getPostList: GetPostListsUseCase(repository),
      getPost: GetPostUseCase(repository));

  return [
    ChangeNotifierProvider<PostPageViewModel>(
        create: (context) => PostPageViewModel(useCases)),
  ];
}
