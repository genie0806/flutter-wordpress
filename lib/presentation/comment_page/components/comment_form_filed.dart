import 'package:flutter/material.dart';

import 'package:virtue_test/domain/model/comment_model/comment_get_model.dart';

class CommentFormField extends StatelessWidget {
  //final CommentGetmodel model;

  const CommentFormField({
    Key? key,
    //required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('테스트'),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: SizedBox(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 16,
                            child: ClipOval(
                              child: Image.network(
                                'https://secure.gravatar.com/avatar/296d1a2155c972d774563d5d59ba42f6?s=250&d=mm&r=g',
                                //fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    '오늘의셀프',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7),
                                    child: Text(
                                      '설명이 카드의 범위 안에 맞도록 하고 싶습니다. 그러나 컨테이너에 대한 특정 너비를 정의하지 않는 한 화면 경계 내에서 제한할 수 없습니다. 다양한 플렉스 값을 사용하여 Expanded, Flex 및 Flexible 안에 넣어 보았지만 운이 없었습니다. Text 위젯의 softWrap 속성을 사용하려고 시도했지만 다시 운이 없습니다. 이러한 위젯 중 하나에서 텍스트를 래핑하는 즉시 사라집니다. 위의 코드에서 Text를 컨테이너에 래핑하고 너비를 설정했습니다. 이것은 작동하지만 다시 매우 해키하고 다른 장치에서 다르게 보이고 몇 가지에서 중단됩니다.',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14),
                                      maxLines: 10,
                                      softWrap: true,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: SizedBox(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 16,
                            child: ClipOval(
                              child: Image.network(
                                'https://secure.gravatar.com/avatar/296d1a2155c972d774563d5d59ba42f6?s=250&d=mm&r=g',
                                //fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    '오늘의셀프',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 7),
                                    child: Text(
                                      '설명이 카드의 범위 안에 맞도록 하고 싶습니다. 그러나 컨테이너에 대한 특정 너비를 정의하지 않는 한 화면 경계 내에서 제한할 수 없습니다. .',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14),
                                      maxLines: 10,
                                      softWrap: true,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )));
  }
}

//String getTimeDifferenceFromNow(DateTime dateTime) {
//  Duration difference = DateTime.now().difference(dateTime);
//  if (difference.inSeconds < 5) {
//    return "Just now";
//  } else if (difference.inMinutes < 1) {
//    return "${difference.inSeconds}s ago";
//  } else if (difference.inHours < 1) {
//    return "${difference.inMinutes}m ago";
//  } else if (difference.inHours < 24) {
//    return "${difference.inHours}h ago";
//  } else {
//    return "${difference.inDays}d ago";
//  }
//  }