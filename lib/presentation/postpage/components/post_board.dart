import 'package:flutter/material.dart';
import 'package:test_virtue/presentation/postpage/post_page.dart';

class PostBoard extends StatelessWidget {
  const PostBoard({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final PostPage widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      width: 411,
      child: Wrap(
        direction: Axis.horizontal,
        //spacing: 10.0,
        //runSpacing: 20.0,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    //width: 175.5,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        border: Border(
                            bottom: BorderSide(
                                width: 1, color: Colors.grey.shade400))),
                    child: Row(children: [
                      Text(
                        '작가',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      const SizedBox(),
                      Text(widget.model.author ?? ''),
                    ]),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    //width: 175.5,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        border: Border(
                            bottom: BorderSide(
                                width: 1, color: Colors.grey.shade400))),
                    child: Row(children: [
                      Text(
                        '전시형태',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      const SizedBox(),
                      Text(widget.model.displayform ?? ''),
                    ]),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      width: 175.5,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          border: Border(
                              bottom: BorderSide(
                                  width: 1, color: Colors.grey.shade400))),
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
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              width: 175.5,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  border: Border(
                      bottom:
                          BorderSide(width: 1, color: Colors.grey.shade400))),
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
            padding: const EdgeInsets.symmetric(horizontal: 15),
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
    );
  }
}
