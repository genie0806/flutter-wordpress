import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:test_virtue/data/data_source/remote/simple_post_api.dart';
import 'package:test_virtue/domain/model/simple_post_model/simple_post_model.dart';
import 'package:test_virtue/presentation/postpage/post_page_view_model.dart';

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
    final viewModel = context.watch<PostPageViewModel>();
    final post = viewModel.postsState.post;

    return Column(
      children: [
        InkWell(
            child: Card(
              child: Image.network(
                model.thumsnailUrl ?? '',
                fit: BoxFit.cover,
                width: 300,
                height: 150,
              ),
            ),
            onTap: onTap),
      ],
    );
  }
}
