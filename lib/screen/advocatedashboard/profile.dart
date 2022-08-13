import 'package:flutter/material.dart';
import 'package:nyayaag_client/screen/advocatedashboard/profileItem.dart';
import 'package:nyayaag_client/controllers/advocate.dart'
    as advocate_controller;

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
  bool fetched = false;
  List<dynamic> profile = [];
  @override
  Widget build(BuildContext context) {
    advocate_controller.Advocate.viewProfile().then((response) {
      print(response![0]);
      if (!fetched) {
        setState(() {
          profile = response;
          fetched = true;
        });
      }
    });
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 150.0, bottom: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 3),
                  ),
                  child: const Center(
                      child: Text(
                    'JD',
                    style: TextStyle(
                        fontSize: 28,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ))),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      profile[0]['firstName'] ?? '',
                      style: const TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Text(profile[0]['emailAddress'] ?? '',
                        style: const TextStyle(
                          fontSize: 18,
                        )),
                    const SizedBox(height: 5),
                    Text(profile[0]['phoneNo'] ?? '',
                        style: const TextStyle(
                          fontSize: 18,
                        )),
                    const SizedBox(height: 5),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(bottom: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                color: const Color.fromARGB(255, 209, 235, 174),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 20.0),
                  child: SizedBox(
                    width: 300,
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Area of Practice: ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          width: 300,
                          child: Text(
                            profile[1]['areaOfPractice'] ?? '',
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Specialization: ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          width: 300,
                          child: Text(
                            profile[1]['specialization'] ?? '',
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 40),
              Card(
                color: const Color.fromARGB(255, 209, 235, 174),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 20.0),
                  child: SizedBox(
                    width: 300,
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Advocate Bar Details: ',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          'District & State: ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          child: Text(
                            profile[1]['state'] + " " +profile[1]['district'] ?? '',
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          'Bar Code Number: ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          child: Text(
                            profile[1]['barCouncilNumber'] ?? '',
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 40),
              Card(
                color: const Color.fromARGB(255, 209, 235, 174),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 20.0),
                  child: SizedBox(
                    width: 300,
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Office Address: ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          child: Text(
                            profile[1]['officeAddress'] ?? '',
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                          child: Text(
                            profile[1]['pinCode'] ?? '',
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 20),
        ProfileItem(
            itemName: 'Edit Profile',
            itemIcon: Icons.person,
            itemColor: Colors.black,
            onClickAction: () => {}),
        ProfileItem(
            itemName: 'Feedback',
            itemIcon: Icons.feedback,
            itemColor: Colors.black,
            onClickAction: () => {}),
        ProfileItem(
            itemName: 'Logout',
            itemIcon: Icons.logout,
            itemColor: Colors.red,
            onClickAction: () => {}),
        const SizedBox(height: 60)
      ],
    );
  }
}
