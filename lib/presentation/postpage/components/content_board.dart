import 'package:flutter/material.dart';
import 'package:flutter_wordpress_content/wp_content.dart';
import 'package:virtue_test/domain/model/simple_post_model/simple_post_model.dart';

class ContentBoard extends StatelessWidget {
  final SimplePostModel simplePostModel;
  const ContentBoard({Key? key, required this.simplePostModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: WPContent(
        simplePostModel.postContent.toString(),
        headingTextColor: Colors.black,
        paragraphTextColor: Colors.black,
        imageCaptionTextColor: Colors.black,
        //textDirection: TextDirection.ltr,
        fontFamily: 'my_font_family',
        fontSize: 17.0,
        paragraphArabicIdentifier: 'tk-adobe-arabic',
        arabicFontFamily: 'my_arabic_font_family',
      ),
    );
  }
}
