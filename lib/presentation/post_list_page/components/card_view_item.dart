import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/src/provider.dart';
import 'package:virtue_test/domain/model/simple_post_model/simple_post_model.dart';

class CardViewItem extends StatelessWidget {
  final SimplePostModel model;
  final void Function() onTap;

  const CardViewItem({
    Key? key,
    required this.onTap,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.parse(model.postDate ?? '');
    String dateform = DateFormat('yyyy년 MM월 dd일').format(date);

    return Column(
      children: [
        InkWell(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      model.largeUrl ?? '',
                    ),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(15))),
              width: 380,
              height: 265,
            ),
            onTap: onTap),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 20, 5, 8),
          child: Text(
            model.title ?? '',
            style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Color(0xff4D4D4D)),
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 9,
              child: ClipOval(
                child: Image.network(
                  model.profileUrl ?? '',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            const SizedBox(
              width: 7,
            ),
            Text(
              model.profile ?? '',
              style: const TextStyle(fontSize: 14, color: Color(0xff666666)),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 30),
          child: Text(
            dateform,
            style: const TextStyle(fontSize: 14, color: Color(0xff828282)),
          ),
        )
      ],
    );
  }
}
