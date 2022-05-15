import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'package:nyayaag_client/screen/homepage.dart';
import 'package:nyayaag_client/screen/litigation_cases.dart';
import 'package:nyayaag_client/screen/registerpage.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
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
        '/litigationcases': (context) => const LitigationCasesPage(),
      },
    );
  }
}
