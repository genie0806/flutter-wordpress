import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';
import 'package:virtue_test/domain/model/simple_post_model/simple_post_model.dart';
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
      context.read<UserMeViewModel>().fetchUserMe();
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
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 4,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: false,
                floating: false,
                snap: false,
                toolbarHeight: 45,
                backgroundColor: Colors.white,
                flexibleSpace: FlexibleSpaceBar(
                  background: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 34,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                contentPadding: const EdgeInsets.only(top: 5),
                                fillColor: const Color(0xffF3F3F3),
                                filled: true,
                                prefixIcon: Icon(
                                  Ionicons.search_outline,
                                  color: Colors.grey.shade500,
                                ),
                                hintText: 'Virtue 검색',
                                hintStyle: TextStyle(
                                    fontSize: 16, color: Colors.grey.shade400),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 9,
                        ),
                        Icon(
                          LineIcons.bookmarkAlt,
                          size: 34,
                          color: Colors.grey.shade600,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Icon(
                          LineIcons.shoppingCart,
                          size: 39,
                          color: Colors.grey.shade600,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: false,
                //expandedHeight: 0,
                toolbarHeight: 45,
                backgroundColor: Colors.white,
                flexibleSpace: FlexibleSpaceBar(
                    background: Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.grey, width: 0.3))),
                    child: const TabBar(
                      isScrollable: true,
                      unselectedLabelColor: Colors.black,
                      labelColor: Color(0xff405376),
                      labelStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      indicator: UnderlineTabIndicator(
                          borderSide:
                              BorderSide(width: 2, color: Color(0xff405376)),
                          insets: EdgeInsets.symmetric(horizontal: 10)),
                      tabs: [
                        Tab(
                          text: '스토리',
                        ),
                        Tab(
                          text: '온라인전시회',
                        ),
                        Tab(
                          text: '아티스트',
                        ),
                        Tab(
                          text: '전시정보',
                        ),
                      ],
                    ),
                  ),
                )),
              )
            ];
          },
          body: TabBarView(children: [
            Padding(
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
                                    MaterialPageRoute(
                                      builder: (context) => PostPage(id: e.id!),
                                    ),
                                  );

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
            const Text('다다'),
            const Text('다다'),
            const Text('다다'),
          ]),
        ),
      ),
    ));
  }
}
