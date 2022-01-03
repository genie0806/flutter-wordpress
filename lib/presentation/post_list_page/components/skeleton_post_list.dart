import 'package:flutter/material.dart';

class SkeletonPostList extends StatelessWidget {
  const SkeletonPostList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              color: Colors.grey[100],
              width: 380,
              height: 265,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              color: Colors.grey[100],
              width: 200,
              height: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              color: Colors.grey[100],
              width: 380,
              height: 265,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              color: Colors.grey[100],
              width: 200,
              height: 30,
            ),
          ),
        ],
      ),
    );
  }
}
