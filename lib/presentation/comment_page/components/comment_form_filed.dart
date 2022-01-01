import 'package:flutter/material.dart';

import 'package:virtue_test/domain/model/comment_model/comment_get_model.dart';

class CommentFormField extends StatelessWidget {
  final CommentGetModel model;

  const CommentFormField({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                        model.avatar ?? "",
                        //fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            model.author ?? '',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 7),
                            child: Text(
                              model.content ?? "",
                              style: const TextStyle(
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
        ],
      ),
    );
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