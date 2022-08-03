import 'package:flutter/material.dart';
import 'package:nyayaag_client/widget/appbar.dart';
import 'package:nyayaag_client/widget/footer.dart';

import 'package:nyayaag_client/controllers/auth.dart' as auth_controller;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final snackBarSuccess = const SnackBar(
    content: Text('Login Successful'),
    backgroundColor: Colors.green,
  );
  final snackBarFailed = const SnackBar(
    content: Text('Failed to login'),
    backgroundColor: Colors.red,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NyayaagAppBarWidget(
        appBar: AppBar(),
      ),
      body: Container(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 176, 198, 146)),
        child: Row(
          children: <Widget>[
            Image.asset(
              'design/logindesign.png',
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    widget.title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Roboto',
                        fontSize: 32,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.bold,
                        height: 1),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Sign in to your account!',
                    style: TextStyle(
                        color: Color.fromARGB(255, 13, 84, 15),
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    margin: const EdgeInsets.only(right: 550, left: 550),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        TextField(
                          controller: emailController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          obscureText: true,
                          controller: passwordController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {
                      auth_controller.Auth.loginUser(
                              emailController.text, passwordController.text)
                          .then((response) {
                        if (response![0] == 200) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(snackBarSuccess);
                          // print(identical(response[1], "\"advocate\""));
                          if (response[1] == "\"advocate\"") {
                            Navigator.pushReplacementNamed(
                                context, '/advocate/update/personal');
                          } else if (response[1] == "\"student\"") {
                            Navigator.pushReplacementNamed(context, '/student');
                          }
                        } else {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(snackBarFailed);
                        }
                      });
                    },
                    child: const Text('Login'),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: const NyayaagFooterWidget(),
    );
  }
}
