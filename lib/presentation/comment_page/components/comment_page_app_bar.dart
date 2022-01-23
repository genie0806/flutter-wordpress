import 'package:flutter/material.dart';
import 'package:virtue_test/domain/model/comment_model/comment_get_model.dart';
import 'package:virtue_test/presentation/post_list_page/post_list_page_view_model.dart';

class CommentPageAppBar extends StatelessWidget {
  const CommentPageAppBar({
    Key? key,
    required this.postListViewModel,
    required this.model,
  }) : super(key: key);

  final PostListPageViewModel postListViewModel;
  final List<CommentGetModel> model;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            padding: const EdgeInsets.only(top: 5),
            onPressed: () async {
              Navigator.pop(context, postListViewModel.refreshList());
            },
            icon: Image.asset(
              'assets/noun-arrow-left-1476218.png',
              width: 26,
              height: 26,
              color: const Color(0xff7d7d7d),
            )),
        IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(minWidth: 37),
            onPressed: () {},
            icon: Image.asset(
              'assets/icons8-home-100.png',
              width: 30,
              height: 30,
              color: const Color(0xff7d7d7d),
            )),
        Padding(
          padding: const EdgeInsets.only(left: 98),
          child: Text(
            '댓글 ' + model.length.toString(),
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.black, fontSize: 18),
          ),
        )
      ],
    );
  }
}
