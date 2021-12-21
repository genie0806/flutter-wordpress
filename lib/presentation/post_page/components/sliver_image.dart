import 'package:flutter/material.dart';
import 'package:virtue_test/domain/model/simple_post_model/simple_post_model.dart';

class SliverImage extends StatelessWidget {
  const SliverImage({
    Key? key,
    required this.simplePostModel,
  }) : super(key: key);

  final SimplePostModel simplePostModel;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      pinned: true,
      floating: false,
      snap: false,
      expandedHeight: 370,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network(
          simplePostModel.largeUrl ?? '',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
