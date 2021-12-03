//import 'package:flutter/material.dart';
//import 'package:test_virtue/core/result.dart';
//import 'package:test_virtue/data/data_source/remote/simple_post_api.dart';
//import 'package:test_virtue/domain/model/post_model/post_model.dart';
//import 'package:test_virtue/domain/model/simple_post_model/simple_post_model.dart';
//import 'package:wordpress_api/wordpress_api.dart';
//import 'package:test_virtue/domain/model/simple_post_model/simple_post_model.dart';
//
//import 'package:test_virtue/data/data_source/remote/post_api.dart';
//
//class ViewPage extends StatefulWidget {
//  const ViewPage({
//    Key? key,
//  }) : super(key: key);
//
//  @override
//  State<ViewPage> createState() => _ViewPageState();
//}
//
//class _ViewPageState extends State<ViewPage> {
//  final postModel = PostModel();
//  final _postApi = PostApi();
//  final simplePostModel = SimplePostModel();
//  final _simplePostApi = SimplePostApi();
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        body: FutureBuilder<List<SimplePostModel>>(
//            future: _simplePostApi.fetchData(),
//            builder: (BuildContext context, AsyncSnapshot snapshot) {
//              if (snapshot.connectionState == ConnectionState.waiting) {
//                return const Center(
//                    child: SizedBox(
//                  child: CircularProgressIndicator(),
//                  width: 200,
//                  height: 200,
//                ));
//              }
//              if (snapshot.hasError) {
//                return const Text('에러가 발생했습니다.');
//              }
//              if (!snapshot.hasData) {
//                return const Text('데어터가 없습니다.');
//              }
//
//              List<SimplePostModel> res = snapshot.data ?? [];
//              return Column(
//                  children: res.map((e) => Text(e.title ?? '없다')).toList());
//            }));
//  }
//}
