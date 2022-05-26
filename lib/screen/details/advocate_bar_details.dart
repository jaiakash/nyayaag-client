import 'package:flutter/material.dart';
import 'package:nyayaag_client/widget/appbar.dart';
import 'package:nyayaag_client/widget/footer.dart';

import 'package:nyayaag_client/controllers/update.dart' as update_controller;

class AdvocateBarUpdate extends StatefulWidget {
  const AdvocateBarUpdate({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AdvocateBarUpdate> createState() => _AdvocateBarUpdateState();
}

class _AdvocateBarUpdateState extends State<AdvocateBarUpdate> {
  TextEditingController stateController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController barnoController = TextEditingController();
  TextEditingController areaofpractiseController = TextEditingController();
  TextEditingController specializationController = TextEditingController();
  TextEditingController officeaddressController = TextEditingController();
  TextEditingController pincodeController = TextEditingController();

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
                          controller: stateController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'State',
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: districtController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'District',
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: barnoController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Bar Council Number',
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: areaofpractiseController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Area Of Practise',
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: specializationController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Specialization',
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: officeaddressController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Office Address',
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: pincodeController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Pincode',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {
                      update_controller.Update.advocatebar(
                              stateController.text,
                              districtController.text,
                              barnoController.text,
                              areaofpractiseController.text,
                              specializationController.text,
                              officeaddressController.text,
                              pincodeController.text)
                          .then((response) {
                        if (response == 200) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(snackBarSuccess);
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
