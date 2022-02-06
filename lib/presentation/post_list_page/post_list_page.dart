import 'dart:async';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:virtue_test/domain/use_case/comment_get_use_case/comment_use_cases.dart';
import 'package:virtue_test/presentation/comment_page/comment_page_view_model.dart';
import 'package:virtue_test/presentation/post_list_page/components/card_view_item.dart';
import 'package:virtue_test/presentation/post_list_page/components/skeleton_post_list.dart';
import 'package:virtue_test/presentation/post_list_page/post_list_page_event.dart';
import 'package:virtue_test/presentation/post_list_page/post_list_page_view_model.dart';
import 'package:virtue_test/presentation/post_page/post_page.dart';
import 'package:virtue_test/presentation/user_me_data/user_me_view_model.dart';

class PostListPage extends StatefulWidget {
  const PostListPage({
    Key? key,
  }) : super(key: key);

  @override
  _PostListPageState createState() => _PostListPageState();
}

class _PostListPageState extends State<PostListPage> {
  StreamSubscription? streamSubscription;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<PostListPageViewModel>().fetchPostListPage();
      final viewModel = context.read<PostListPageViewModel>();
      streamSubscription = viewModel.eventStream.listen((event) {
        event.when(showSnackBar: (message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message)),
          );
        }, reloadPage: () {
          const ReloadPage();
        });
      });
      context.read<UserMeViewModel>().fetchGetProfile();
      final userViewModel = context.read<UserMeViewModel>();
      print(userViewModel.state.model?.email);

      
    });
  }

  @override
  void dispose() {
    streamSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<PostListPageViewModel>();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: RefreshIndicator(
          onRefresh: viewModel.refreshList,
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              if (viewModel.postsListState.postList.isNotEmpty) ...{
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Text(
                    '전체 ' +
                        viewModel.postsListState.postList.length
                            .toString(),
                    style: const TextStyle(fontSize: 15),
                  ),
                   ),
                ...viewModel.postsListState.postList
                    .map((e) => CardViewItem(
                          model: e,
                          onTap: () async {
                            bool? result = await Navigator.push(
                                context,
                                PageTransition(
                                  child: ChangeNotifierProvider(
                                    create: (context) {
                                      final useCases = context.read<CommentGetUseCases>()
                                      return CommentPageViewModel(useCases)
                                      }
                                    child: PostPage(id: e.id!,),
                                     ),
                                  type: PageTransitionType
                                      .rightToLeftWithFade,
                                ));
                            if (result != null && result == true) {
                              viewModel.refreshList();
                            }
                          },
                        ))
                    .toList()
                 } else ...{
                   const SkeletonPostList()
                 }
               ],
                      ),
                    ),
                  ),
    );
    
    
    
    
    
  }
}
