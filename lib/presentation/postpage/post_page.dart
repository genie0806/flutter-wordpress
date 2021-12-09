import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wordpress_content/wp_content.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:test_virtue/presentation/post_list_page/post_list_page_view_model.dart';
import 'package:test_virtue/presentation/postpage/components/board.dart';

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

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      // context.read<PostPageViewModel>().ferchPostPage(NoParams());

      // final viewModel = context.read<PostListPageViewModel>();
      // streamSubscription = viewModel.eventStream.listen((event) {
      //   event.when(showSnackBar: (message) {
      //     ScaffoldMessenger.of(context).showSnackBar(
      //       SnackBar(content: Text(message)),
      //     );
      //   }, reloadPage: () {
      //     Navigator.pop(context, true);
      //   });
      // });
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

    DateTime date = DateTime.parse(model.postDate ?? '');
    String dateform = DateFormat('yyyy년 MM월 dd일').format(date);

    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          titleSpacing: 1,
          toolbarHeight: 40,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          shadowColor: const Color(0xffFEFEFE),
          elevation: 0.2,
          title: Row(
            children: [
              IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  //constraints: const BoxConstraints(minWidth:),
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
          onRefresh: viewModel.refresh,
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                toolbarHeight: 0,
                automaticallyImplyLeading: false,
                backgroundColor: Colors.transparent,
                pinned: true,
                floating: false,
                snap: false,
                expandedHeight: 370,
                stretch: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.network(
                    model.largeUrl ?? '',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
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
                    Padding(
                      padding: const EdgeInsets.fromLTRB(17, 0, 17, 30),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            child: ClipOval(
                              child: Image.network(
                                model.profileUrl ?? '',
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  model.profile ?? '',
                                  style: const TextStyle(fontSize: 14),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  dateform,
                                  style: const TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          const Expanded(
                            child: SizedBox(),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  pressed = !pressed;
                                });
                              },
                              style: pressed
                                  ? ElevatedButton.styleFrom(
                                      primary: Colors.black,
                                      maximumSize: const Size(93, 40),
                                      minimumSize: const Size(93, 40),
                                    )
                                  : ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      maximumSize: const Size(93, 40),
                                      minimumSize: const Size(93, 40),
                                      side:
                                          const BorderSide(color: Colors.black),
                                    ),
                              child: pressed
                                  ? const Text('Follow')
                                  : const Text(
                                      'Following',
                                      style: TextStyle(color: Colors.black),
                                    )),
                        ],
                      ),
                    ),
                    //회색 포스트 보드
                    Greyboard(
                      simplePostModel: model,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: WPContent(
                        model.postContent.toString(),
                        headingTextColor: Colors.black,
                        paragraphTextColor: Colors.black,
                        imageCaptionTextColor: Colors.black,
                        //textDirection: TextDirection.ltr,
                        fontFamily: 'my_font_family',
                        fontSize: 17.0,
                        paragraphArabicIdentifier: 'tk-adobe-arabic',
                        arabicFontFamily: 'my_arabic_font_family',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
