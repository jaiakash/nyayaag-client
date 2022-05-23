import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:nyayaag_client/screen/dashboard/advocate_dashboard.dart';

import 'package:nyayaag_client/screen/homepage.dart';
import 'package:nyayaag_client/screen/services.dart';
import 'package:nyayaag_client/screen/registerpage.dart';
import 'package:nyayaag_client/screen/loginpage.dart';
import 'package:nyayaag_client/screen/details/student_details.dart';
import 'package:nyayaag_client/screen/details/advocate_details.dart';

void main() async {
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
      initialRoute: '/',
      routes: {
        '/': (context) =>
            const HomePage(title: 'Nyayaag - Voice of Justice'),
        '/home': (context) =>
            const HomePage(title: 'Nyayaag - Voice of Justice'),
        '/register': (context) =>
            const RegisterPage(title: 'Nyayaag - Register'),
        '/login': (context) => const LoginPage(title: 'Nyayaag - Login'),
        '/services': (context) => const OurServicesPage(),
        '/student/update': (context) =>
            const StudentUpdate(title: 'Student Update'),
        '/advocate/update': (context) =>
            const AdvocateUpdate(title: 'Advocate Update'),
        '/advocate': (context) =>
            const AdvocateDashboard(title: 'Advocate Dashboard')
      },
    );
  }
}
