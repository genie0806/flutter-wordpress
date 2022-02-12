import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:line_icons/line_icons.dart';
import 'package:virtue_test/domain/util/system_navigator_double.dart';
import 'package:virtue_test/presentation/post_list_page/post_list_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  TabController? tabController;
  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
      color: Colors.white,
      child: WillPopScope(
        onWillPop: () async {
          bool result = onWillPop();
          return await Future.value(result);
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: DefaultTabController(
            length: 4,
            child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
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
                                    contentPadding:
                                        const EdgeInsets.only(top: 5),
                                    fillColor: const Color(0xffF3F3F3),
                                    filled: true,
                                    prefixIcon: Icon(
                                      Ionicons.search_outline,
                                      color: Colors.grey.shade500,
                                    ),
                                    hintText: 'Virtue 검색',
                                    hintStyle: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey.shade400),
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
                                bottom: BorderSide(
                                    color: Colors.grey, width: 0.3))),
                        child: const TabBar(
                          isScrollable: true,
                          unselectedLabelColor: Colors.black,
                          labelColor: Color(0xff405376),
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                          indicator: UnderlineTabIndicator(
                              borderSide: BorderSide(
                                  width: 2, color: Color(0xff405376)),
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
              body: TabBarView(
                dragStartBehavior: DragStartBehavior.down,
                physics: ClampingScrollPhysics(),
                children: [
                  PostListPage(),
                  PostListPage(),
                  Text('다다'),
                  Text('다다'),
                  //추후 로그아웃 버튼 추가, googleLogout, secure Storage 해제
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ListViewCount extends StatelessWidget {
  const ListViewCount({
    required Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: listviewBuilder, itemCount: 30);
  }
}

Widget listviewBuilder(BuildContext context, int index) => Container(
      color: Colors.accents[index % Colors.accents.length],
      height: 100,
    );
