import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_virtue/di/provider_setup.dart';
import 'package:test_virtue/presentation/post_list_page/post_list_page.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  await dotenv.load(fileName: 'url.env');

  runApp(
    MultiProvider(providers: await getProviders(), child: const TestPage()),
  );
}

class TestPage extends StatelessWidget {
  const TestPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Try Image Search', home: PostListPage());
  }
}
