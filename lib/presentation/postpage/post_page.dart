import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        titleSpacing: 2,
        //backgroundColor: Colors.transparent,
        title: Row(
          children: [
            IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                //constraints: const BoxConstraints(minWidth:),
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
            IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(minWidth: 35),
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                )),
          ],
        ),
        elevation: 0.0,
      ),
    );
  }
}
