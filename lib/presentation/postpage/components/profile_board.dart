import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:virtue_test/domain/model/simple_post_model/simple_post_model.dart';

class ProfileBoard extends StatefulWidget {
  final SimplePostModel simplePostModel;
  const ProfileBoard({
    Key? key,
    required this.simplePostModel,
  }) : super(key: key);

  @override
  State<ProfileBoard> createState() => _ProfileBoardState();
}

class _ProfileBoardState extends State<ProfileBoard> {
  bool pressed = true;

  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.parse(widget.simplePostModel.postDate ?? '');
    String dateform = DateFormat('yyyy년 MM월 dd일').format(date);

    return Padding(
      padding: const EdgeInsets.fromLTRB(17, 0, 17, 30),
      child: Row(
        children: [
          CircleAvatar(
            radius: 22,
            child: ClipOval(
              child: Image.network(
                widget.simplePostModel.profileUrl ?? '',
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
                  widget.simplePostModel.profile ?? '',
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  dateform,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  pressed = !pressed;
                });
              },
              style: pressed
                  ? ElevatedButton.styleFrom(
                      primary: Colors.black,
                      maximumSize: const Size(93, 40),
                      minimumSize: const Size(93, 40),
                    )
                  : ElevatedButton.styleFrom(
                      primary: Colors.white,
                      maximumSize: const Size(93, 40),
                      minimumSize: const Size(93, 40),
                      side: const BorderSide(color: Colors.black, width: 0.5),
                    ),
              child: pressed
                  ? const Text('Follow')
                  : const Text(
                      'Following',
                      style: TextStyle(color: Colors.black),
                    )),
        ],
      ),
    );
  }
}
