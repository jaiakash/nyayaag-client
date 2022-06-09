import 'package:flutter/material.dart';
import 'package:nyayaag_client/screen/advocatedashboard/profileItem.dart';

Column profile() => Column(
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
                  children: const [
                    Text(
                      'Mr John Doe',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text('johndoe@gmail.com',
                        style: TextStyle(
                          fontSize: 18,
                        )),
                    SizedBox(height: 5),
                    Text('9999999999',
                        style: TextStyle(
                          fontSize: 18,
                        )),
                    SizedBox(height: 5),
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
                color: Color.fromARGB(255, 209, 235, 174),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 20.0),
                  child: SizedBox(
                    width: 300,
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Area of Practice: ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 5),
                        SizedBox(
                          width: 300,
                          child: Text(
                            'Corporate Law',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Specialization: ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 5),
                        SizedBox(
                          width: 300,
                          child: Text(
                            'Corporate Law',
                            style: TextStyle(
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
                color: Color.fromARGB(255, 209, 235, 174),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 20.0),
                  child: SizedBox(
                    width: 300,
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Advocate Bar Details: ',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'District & State: ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 5),
                        SizedBox(
                          child: Text(
                            'Tiruchirappalli, Tamil Nadu',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Bar Code Number: ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 5),
                        SizedBox(
                          child: Text(
                            '12345',
                            style: TextStyle(
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
                color: Color.fromARGB(255, 209, 235, 174),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 20.0),
                  child: SizedBox(
                    width: 300,
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Office Address: ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 5),
                        SizedBox(
                          child: Text(
                            '37PQ+M3Q, High Ct Rd, Parry\'s Corner, George Town, Chennai, Tamil Nadu 600108',
                            style: TextStyle(
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
