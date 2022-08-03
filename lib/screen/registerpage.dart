import 'package:flutter/material.dart';
import 'package:nyayaag_client/widget/appbar.dart';
import 'package:nyayaag_client/widget/footer.dart';

import 'package:nyayaag_client/controllers/auth.dart' as auth_controller;

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController securityAnswerController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  final snackBarOTPSuccess = const SnackBar(
    content: Text('Registered Successfully, Enter OTP'),
    backgroundColor: Colors.green,
  );
  final snackBarVerifySuccess = const SnackBar(
    content: Text('Registered Successfully!! Proceed to login.'),
    backgroundColor: Colors.green,
  );
  final snackBarFailed = const SnackBar(
    content: Text('Failed, enter the correct details!'),
    backgroundColor: Colors.red,
  );

  String _userTypeValue = "";
  String _securityQuestionValue = "";

  bool isVerifyOtpVisisble = false;

  enableOTPContainer() {
    setState(() {
      isVerifyOtpVisisble = true;
    });
  }

  disableOTPContainer() {
    setState(() {
      isVerifyOtpVisisble = true;
    });
  }

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
                    'Register your account info!',
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
                        TextField(
                          obscureText: true,
                          controller: confirmPasswordController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'ConfirmPassword',
                          ),
                        ),
                        const SizedBox(height: 10),
                        DropdownButton<String>(
                          hint: _userTypeValue == ""
                              ? const Text('Please choose type of user')
                              : Text(_userTypeValue),
                          items: <String>['student', 'advocate', 'citizen']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(
                              () {
                                _userTypeValue = value!;
                              },
                            );
                          },
                        ),
                        const SizedBox(height: 10),
                        DropdownButton<String>(
                          hint: _securityQuestionValue == ""
                              ? const Text('Choose security question')
                              : Text(_securityQuestionValue),
                          items: <String>[
                            ' Name of your pet?',
                            ' Name of city where you were born?',
                            ' Your favorite'
                          ].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(
                              () {
                                _securityQuestionValue = value!;
                              },
                            );
                          },
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: securityAnswerController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Security Answer',
                          ),
                        ),
                        const SizedBox(height: 15),
                        TextField(
                          controller: otpController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter OTP',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {
                      auth_controller.Auth.registerUser(
                              emailController.text,
                              passwordController.text,
                              confirmPasswordController.text,
                              _securityQuestionValue,
                              securityAnswerController.text,
                              _userTypeValue)
                          .then((response) {
                        if (response == 201) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(snackBarOTPSuccess);
                          enableOTPContainer();
                        } else {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(snackBarFailed);
                        }
                      });
                    },
                    child: const Text('Register'),
                  ),
                  const SizedBox(height: 15),
                  Column(children: [
                    Visibility(
                      visible: isVerifyOtpVisisble,
                      child: ElevatedButton(
                        onPressed: () {
                          auth_controller.Auth.verifyOTP(
                                  emailController.text, otpController.text)
                              .then((response) {
                            if (response == 200) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBarVerifySuccess);
                              Navigator.pushReplacementNamed(context, '/login');
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBarFailed);
                            }
                          });
                        },
                        child: const Text('Verify OTP'),
                      ),
                    )
                  ])
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
