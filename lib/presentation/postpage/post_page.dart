import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wordpress_content/wp_content.dart';
import 'package:provider/provider.dart';
import 'package:test_virtue/domain/model/simple_post_model/simple_post_model.dart';
import 'package:test_virtue/presentation/postpage/post_page_view_model.dart';
import 'package:wordpress_api/wordpress_api.dart';

class PostPage extends StatefulWidget {
  const PostPage({
    Key? key,
  }) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<PostPageViewModel>();
    final post = viewModel.postsState.post;
    return SafeArea(
      child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            titleSpacing: 1,
            toolbarHeight: 40,
            backgroundColor: Colors.transparent,
            title: Row(
              children: [
                IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    //constraints: const BoxConstraints(minWidth:),
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    )),
                IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(minWidth: 30),
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.home,
                        color: Colors.white, size: 25)),
              ],
            ),
            elevation: 0.0,
          ),
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                expandedHeight: 360,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.network(
                    //객체로 바꿀부분
                    'https://virtureart.shop/wp-content/uploads/2021/11/20210209%EF%BC%BF175631.jpg',
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
                        Text(post?.categoryName ?? ''),
                        Text(
                          post?.title ?? '',
                          style: const TextStyle(fontSize: 40),
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
                                    Text(post?.author ?? ''),
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
                                    Text(post?.displayform ?? ''),
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
                                    Text(post?.style ?? ''),
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
                                    Text(post?.space ?? ''),
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
                                    Text(post?.location ?? ''),
                                  ]),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //WPContent(
                        //  post.postContent.toString(),
                        //  headingTextColor: Colors.black,
                        //  paragraphTextColor: Colors.black,
                        //  imageCaptionTextColor: Colors.black,
                        //  textDirection: TextDirection.ltr,
                        //  fontFamily: 'my_font_family',
                        //  fontSize: 16.0,
                        //  paragraphArabicIdentifier: 'tk-adobe-arabic',
                        //  arabicFontFamily: 'my_arabic_font_family',
                        //)
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
