import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wordpress_content/wp_content.dart';
import 'package:provider/provider.dart';
import 'package:test_virtue/core/data_case.dart';
import 'package:test_virtue/domain/model/simple_post_model/simple_post_model.dart';
import 'package:test_virtue/presentation/postpage/components/follow_button.dart';
import 'package:test_virtue/presentation/postpage/components/post_board.dart';
import 'package:test_virtue/presentation/postpage/post_page_event.dart';
import 'package:test_virtue/presentation/postpage/post_page_view_model.dart';
import 'package:test_virtue/presentation/postpage/components/date_parse.dart';
import 'package:intl/intl.dart';

class PostPage extends StatefulWidget {
  final SimplePostModel model;
  const PostPage({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  bool pressed = true;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<PostPageViewModel>().ferchPostPage(NoParams());
      context.read<PostPageViewModel>().eventStream.listen((event) {
        if (event is Showsnackbar) {
          final snackbar = SnackBar(content: Text(event.message));
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<PostPageViewModel>();
    final post = viewModel.postsState.post;
    final postModel = SimplePostModel();

    DateTime date = DateTime.parse(widget.model.postDate ?? '');
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
          body: CustomScrollView(
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
                    widget.model.largeUrl ?? '',
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
                        widget.model.categoryName ?? '',
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(17, 0, 17, 20),
                      child: Text(
                        widget.model.title ?? '',
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
                                widget.model.profileUrl ?? '',
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
                                  widget.model.profile ?? '',
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
                          const SizedBox(
                            width: 135,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                pressed = !pressed;
                              },
                              style: pressed
                                  ? ElevatedButton.styleFrom(
                                      primary: Colors.black)
                                  : ElevatedButton.styleFrom(
                                      primary: Colors.white),
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
                    PostBoard(widget: widget),
                    WPContent(
                      widget.model.postContent.toString(),
                      headingTextColor: Colors.black,
                      paragraphTextColor: Colors.black,
                      imageCaptionTextColor: Colors.black,
                      //textDirection: TextDirection.ltr,
                      fontFamily: 'my_font_family',
                      fontSize: 16.0,
                      paragraphArabicIdentifier: 'tk-adobe-arabic',
                      arabicFontFamily: 'my_arabic_font_family',
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
