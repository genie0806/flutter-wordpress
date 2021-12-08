import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/src/provider.dart';
import 'package:test_virtue/core/data_case.dart';
import 'package:test_virtue/data/data_source/remote/simple_post_list_api.dart';
import 'package:test_virtue/domain/model/simple_post_model/simple_post_model.dart';
import 'package:test_virtue/domain/use_case/post_use_case/post_use_cases.dart';
import 'package:test_virtue/presentation/post_list_page/components/card_view_item.dart';
import 'package:test_virtue/presentation/post_list_page/post_list_page_view_model.dart';
import 'package:test_virtue/presentation/post_list_page/post_list_page_event.dart';
import 'package:test_virtue/core/result.dart';
import 'package:test_virtue/presentation/postpage/post_page.dart';
import 'package:test_virtue/presentation/postpage/post_page_view_model.dart';

class PostListPage extends StatefulWidget {
  const PostListPage({
    Key? key,
  }) : super(key: key);

  @override
  _PostListPageState createState() => _PostListPageState();
}

class _PostListPageState extends State<PostListPage> {
  StreamSubscription? _streamSubscription;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final viewModel = context.read<PostListPageViewModel>();
      context.read<PostListPageViewModel>().fetchPostListPage(NoParams());
      context.read<PostListPageViewModel>().eventStream.listen((event) {
        if (event is Showsnackbar) {
          final snackbar = SnackBar(content: Text(event.message));
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
        }
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<PostListPageViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: imageResultView(viewModel, context),
      ),
    );
  }
}

Widget imageResultView(PostListPageViewModel viewModel, BuildContext context) {
  final viewModel = context.watch<PostListPageViewModel>();
  return RefreshIndicator(
    onRefresh: viewModel.refresh,
    child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: viewModel.postsListState.postList
            .map((e) => CardViewItem(
                  model: e,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ChangeNotifierProvider<PostPageViewModel>(
                                create: (context) {
                                  return context.read<PostPageViewModel>();
                                },
                                child: PostPage(
                                  model: e,
                                )),
                      ),
                    );
                  },
                ))
            .toList()),
  );
}
