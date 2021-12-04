import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_virtue/di/provider_setup.dart';
import 'package:test_virtue/presentation/postpage/post_page.dart';
import 'package:test_virtue/view_page.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: 'url.env');

  runApp(
    MultiProvider(providers: await getProviders(), child: TestPage()),
  );
}

class TestPage extends StatelessWidget {
  const TestPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Try Image Search', home: PostPage());
  }
}
