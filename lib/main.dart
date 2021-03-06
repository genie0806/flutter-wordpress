import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:virtue_test/di/provider_setup.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:virtue_test/presentation/splashScreen/splash_screen.dart';

Future main() async {
  await dotenv.load(fileName: 'url.env');
  WidgetsFlutterBinding.ensureInitialized();
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
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Try Image Search',
        home: SplashScreen());
  }
}
