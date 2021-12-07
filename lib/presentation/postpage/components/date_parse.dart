//import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';
//import 'package:test_virtue/data/data_source/remote/simple_post_api.dart';
//import 'package:test_virtue/domain/model/simple_post_model/simple_post_model.dart';
//
//class ProfileBoard extends StatelessWidget {
//  const ProfileBoard({Key? key}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    final model = SimplePostModel();
//
//    DateFormat dateFormat = DateFormat("yyyy년 MM월 dd일");
//    String createDate = dateFormat.format(DateTime.parse(model.postDate ??''));
//
//    
//
//
//    return Row(children: [
//      CircleAvatar(
//        radius: 22,
//        child: ClipOval(
//          child: Image.network(
//            model.profileUrl ?? '',
//            fit: BoxFit.scaleDown,
//          ),
//        ),
//        Text(createDate),
//      ),
//    ]);
//  }
//}
//