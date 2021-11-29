import 'package:flutter/material.dart';
import 'package:test_virtue/view_page.dart';
import 'package:wordpress_api/wordpress_api.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  await dotenv.load(fileName: 'url.env');
  runApp(const TestPage());
}

class TestPage extends StatelessWidget {
  const TestPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Try Image Search', home: ViewPage());
  }
}
