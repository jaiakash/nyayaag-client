import 'package:flutter/material.dart';
import 'package:nyayaag_client/widget/appbar.dart';
import 'package:nyayaag_client/widget/footer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NyayaagAppBarWidget.getAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Login Page is in development',
            ),
          ],
        ),
      ),
      bottomSheet: NyayaagFooterWidget.getFooter(),
    );
  }
}
