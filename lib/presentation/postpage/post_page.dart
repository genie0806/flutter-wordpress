import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wordpress_content/wp_content.dart';
import 'package:provider/provider.dart';
import 'package:test_virtue/core/data_case.dart';
import 'package:test_virtue/domain/model/simple_post_model/simple_post_model.dart';
import 'package:test_virtue/presentation/postpage/post_page_event.dart';
import 'package:test_virtue/presentation/postpage/post_page_view_model.dart';

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
    return SafeArea(
      child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            titleSpacing: 1,
            toolbarHeight: 40,
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            shadowColor: const Color(0xffFEFEFE),
            //elevation: 1,
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
                automaticallyImplyLeading: false,
                backgroundColor: Colors.transparent,
                pinned: false,
                expandedHeight: 360,
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 20, 15, 15),
                          child: Text(
                            widget.model.categoryName ?? '',
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 20),
                          child: Text(
                            widget.model.title ?? '',
                            style: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          color: Colors.grey.shade200,
                          width: 411,
                          child: Wrap(
                            direction: Axis.horizontal,
                            //spacing: 10.0,
                            //runSpacing: 20.0,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Container(
                                  width: 175.5,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      border: Border(
                                          bottom: BorderSide(
                                              width: 1,
                                              color: Colors.grey.shade400))),
                                  child: Row(children: [
                                    Text(
                                      '작가',
                                      style: TextStyle(color: Colors.grey[700]),
                                    ),
                                    const SizedBox(
                                      width: 76,
                                    ),
                                    Text(widget.model.author ?? ''),
                                  ]),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Container(
                                  width: 175.5,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      border: Border(
                                          bottom: BorderSide(
                                              width: 1,
                                              color: Colors.grey.shade400))),
                                  child: Row(children: [
                                    Text(
                                      '전시형태',
                                      style: TextStyle(color: Colors.grey[700]),
                                    ),
                                    const SizedBox(
                                      width: 50,
                                    ),
                                    Text(widget.model.displayform ?? ''),
                                  ]),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Container(
                                  width: 175.5,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      border: Border(
                                          bottom: BorderSide(
                                              width: 1,
                                              color: Colors.grey.shade400))),
                                  child: Row(children: [
                                    Text(
                                      '작품 스타일',
                                      style: TextStyle(color: Colors.grey[700]),
                                    ),
                                    const SizedBox(
                                      width: 35,
                                    ),
                                    Text(widget.model.style ?? ''),
                                  ]),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Container(
                                  width: 175.5,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      border: Border(
                                          bottom: BorderSide(
                                              width: 1,
                                              color: Colors.grey.shade400))),
                                  child: Row(children: [
                                    Text(
                                      '전시공간',
                                      style: TextStyle(color: Colors.grey[700]),
                                    ),
                                    const SizedBox(
                                      width: 50,
                                    ),
                                    Text(widget.model.space ?? ''),
                                  ]),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Container(
                                  width: 351,
                                  height: 50,
                                  color: Colors.grey.shade200,
                                  child: Row(children: [
                                    Text(
                                      '지역',
                                      style: TextStyle(color: Colors.grey[700]),
                                    ),
                                    const SizedBox(
                                      width: 76,
                                    ),
                                    Text(widget.model.location ?? ''),
                                  ]),
                                ),
                              ),
                            ],
                          ),
                        ),
                        WPContent(
                          widget.model.postContent.toString(),
                          headingTextColor: Colors.black,
                          paragraphTextColor: Colors.black,
                          imageCaptionTextColor: Colors.black,
                          textDirection: TextDirection.ltr,
                          fontFamily: 'my_font_family',
                          fontSize: 16.0,
                          paragraphArabicIdentifier: 'tk-adobe-arabic',
                          arabicFontFamily: 'my_arabic_font_family',
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
