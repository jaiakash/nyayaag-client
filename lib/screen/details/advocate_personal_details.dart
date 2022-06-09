import 'package:flutter/material.dart';
import 'package:nyayaag_client/widget/appbar.dart';
import 'package:nyayaag_client/widget/footer.dart';

import 'package:nyayaag_client/controllers/update.dart' as update_controller;

class AdvocatePersonalUpdate extends StatefulWidget {
  const AdvocatePersonalUpdate({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  State<AdvocatePersonalUpdate> createState() => _AdvocatePersonalUpdateState();
}

class _AdvocatePersonalUpdateState extends State<AdvocatePersonalUpdate> {
  TextEditingController salutationController = TextEditingController();
  TextEditingController firstController = TextEditingController();
  TextEditingController middleController = TextEditingController();
  TextEditingController lastController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController emailaddressController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  final snackBarSuccess = const SnackBar(
    content: Text('Update Successful'),
    backgroundColor: Colors.green,
  );
  final snackBarFailed = const SnackBar(
    content: Text('Can not update information'),
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
                    'Update your information!',
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
                          controller: salutationController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Salutation',
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: firstController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'First Name',
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: middleController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Middle Name',
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: lastController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Last Name',
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: genderController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Gender',
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: emailaddressController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email Address',
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: dobController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Date of Birth',
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: phoneController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Phone Number',
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {
                      update_controller.Update.advocatepersonal(
                              salutationController.text,
                              firstController.text,
                              middleController.text,
                              lastController.text,
                              genderController.text,
                              emailaddressController.text,
                              dobController.text,
                              phoneController.text)
                          .then((response) {
                        if (response == 200) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(snackBarSuccess);
                          Navigator.pushReplacementNamed(
                              context, '/advocate/update/bar');
                        } else {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(snackBarFailed);
                        }
                      });
                    },
                    child: const Text('Update Details'),
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
