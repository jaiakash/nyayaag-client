import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:nyayaag_client/screen/homepage.dart';
import 'package:nyayaag_client/screen/litigation_cases.dart';
import 'package:nyayaag_client/screen/registerpage.dart';
import 'package:nyayaag_client/screen/loginpage.dart';

void main() async {
  setUrlStrategy(PathUrlStrategy());
  await dotenv.load(fileName: ".env");
  runApp(const NyayaagApp());
}

class NyayaagApp extends StatelessWidget {
  const NyayaagApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nyayaag',
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) =>
            const HomePage(title: 'Nyayaag - Voice of Justice'),
        '/register': (context) =>
            const RegisterPage(title: 'Nyayaag - Register'),
        '/login': (context) => const LoginPage(title: 'Nyayaag - Login'),
        '/litigationcases': (context) => const LitigationCasesPage(),
      },
    );
  }
}
