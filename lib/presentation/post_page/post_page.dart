import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';
import 'package:virtue_test/presentation/post_list_page/post_list_page_view_model.dart';
import 'package:virtue_test/presentation/post_page/components/content_board.dart';
import 'package:virtue_test/presentation/post_page/components/info_board.dart';
import 'package:virtue_test/presentation/post_page/components/profile_board.dart';
import 'package:virtue_test/presentation/post_page/components/sliver_image.dart';

class PostPage extends StatefulWidget {
  final int id;

  const PostPage({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  StreamSubscription? streamSubscription;
  bool pressed = true;
  bool likesPressed = true;
  bool commentPressed = true;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final viewModel = context.read<PostListPageViewModel>();
      streamSubscription = viewModel.eventStream.listen((event) {
        event.when(
            showSnackBar: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message)),
              );
            },
            reloadPage: () {});
      });
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
    final model =
        viewModel.postsListState.postList.where((e) => e.id == widget.id).first;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          titleSpacing: 1,
          toolbarHeight: 40,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          shadowColor: const Color(0xffFEFEFE).withAlpha(1),
          //elevation: 0.1,
          title: Row(
            children: [
              IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Navigator.pop(context);
                    setState(() {
                      viewModel.refreshList();
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 30,
                  )),
              IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(minWidth: 35),
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.home,
                      color: Colors.white, size: 25)),
            ],
          ),
        ),
        body: RefreshIndicator(
          onRefresh: viewModel.refreshList,
          child: Stack(
            children: [
              CustomScrollView(
                slivers: [
                  SliverImage(simplePostModel: model),
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(17, 25, 17, 15),
                          child: Text(
                            model.categoryName ?? '',
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(17, 0, 17, 20),
                          child: Text(
                            model.title ?? '',
                            style: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                        ProfileBoard(
                          simplePostModel: model,
                        ),

                        //회색 포스트 보드
                        Infoboard(
                          simplePostModel: model,
                        ),
                        ContentBoard(
                          simplePostModel: model,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 0,
                top: 790,
                right: 0,
                bottom: 0,
                child: Opacity(
                  opacity: 0.9,
                  child: Container(
                    color: Colors.white,
                    height: 55,
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white, elevation: 0),
                            onPressed: () {
                              setState(() {
                                likesPressed = !likesPressed;
                              });
                            },
                            icon: likesPressed
                                ? const Icon(
                                    Icons.favorite_border_outlined,
                                    color: Colors.black,
                                  )
                                : const Icon(
                                    Icons.favorite,
                                    color: Color(0xff405376),
                                  ),
                            label: likesPressed
                                ? const Text(
                                    '0',
                                    style: TextStyle(color: Colors.black),
                                  )
                                : const Text(
                                    '1',
                                    style: TextStyle(color: Colors.black),
                                  )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Ionicons.share_social_outline)),
                        ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white, elevation: 0),
                            onPressed: () {
                              setState(() {
                                commentPressed = !commentPressed;
                              });
                              //navigator로 Comment 창으로 이동
                            },
                            icon: const Icon(
                              Ionicons.chatbubble_outline,
                              color: Colors.black,
                            ),
                            label: commentPressed
                                ? const Text(
                                    '0',
                                    style: TextStyle(color: Colors.black),
                                  )
                                : const Text('1',
                                    style: TextStyle(color: Colors.black))),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
