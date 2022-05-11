import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'package:nyayaag_client/screen/HomePage.dart';
import 'package:nyayaag_client/screen/LoginPage.dart';

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
      initialRoute: '/home',
      routes: {
        '/home': (context) =>
            const HomePage(title: 'Nyayaag - Voice of Justice'),
        '/loginCitizen': (context) =>
            const LoginPage(title: 'Nyayaa - Citizen Login'),
        '/loginAdvocate': (context) =>
            const LoginPage(title: 'Nyayaag - Advocate Login'),
      },
    );
  }
}
