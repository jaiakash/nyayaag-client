import 'package:flutter/material.dart';
import 'package:nyayaag_client/controllers/advocate.dart'
    as advocate_controller;

Widget clientBook(BuildContext context) {
  const snackBarSuccess = SnackBar(
    content: Text('Update Successful'),
    backgroundColor: Colors.green,
  );
  const snackBarFailed = SnackBar(
    content: Text('Can not update information'),
    backgroundColor: Colors.red,
  );
  // TODO Add the for loop mapper
  advocate_controller.Advocate.viewClients().then((response) {
    if (1>2) {
      ScaffoldMessenger.of(context).showSnackBar(snackBarSuccess);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(snackBarFailed);
    }
  });
  return Center(
    child: Column(
      children: [
        Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton(
                  child: const Text(
                    'Add New Client',
                    style: TextStyle(fontSize: 18),
                  ),
                  onPressed: () {
                    TextEditingController nameController =
                        TextEditingController();
                    TextEditingController contactController =
                        TextEditingController();
                    TextEditingController addressController =
                        TextEditingController();
                    TextEditingController nexthearingdateController =
                        TextEditingController();
                    TextEditingController casetypeController =
                        TextEditingController();
                    TextEditingController courtcomplexController =
                        TextEditingController();
                    TextEditingController casenumberController =
                        TextEditingController();
                    TextEditingController caseyearController =
                        TextEditingController();
                    TextEditingController iadetailsController =
                        TextEditingController();
                    showModalBottomSheet(
                        constraints:
                            const BoxConstraints(maxWidth: double.infinity),
                        backgroundColor: Color.fromARGB(255, 227, 255, 188),
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return Wrap(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15)),
                                  ),
                                  child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 30),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            TextFormField(
                                              controller: nameController,
                                              decoration: const InputDecoration(
                                                labelText: 'Client Name',
                                              ),
                                            ),
                                            TextFormField(
                                              controller: contactController,
                                              decoration: const InputDecoration(
                                                labelText: 'Contact Number',
                                              ),
                                            ),
                                            TextFormField(
                                              controller: addressController,
                                              decoration: const InputDecoration(
                                                labelText: 'Address',
                                              ),
                                            ),
                                            TextFormField(
                                              controller:
                                                  nexthearingdateController,
                                              decoration: const InputDecoration(
                                                labelText: 'Next Hearing Date',
                                              ),
                                            ),
                                            TextFormField(
                                              controller:
                                                  courtcomplexController,
                                              decoration: const InputDecoration(
                                                labelText: 'Court Complex',
                                              ),
                                            ),
                                            TextFormField(
                                              controller: casetypeController,
                                              decoration: const InputDecoration(
                                                labelText: 'Case Type',
                                              ),
                                            ),
                                            TextFormField(
                                              controller: casenumberController,
                                              decoration: const InputDecoration(
                                                labelText: 'Case Number',
                                              ),
                                            ),
                                            TextFormField(
                                              controller: caseyearController,
                                              decoration: const InputDecoration(
                                                labelText: 'Case Year',
                                              ),
                                            ),
                                            TextFormField(
                                              controller: iadetailsController,
                                              decoration: const InputDecoration(
                                                labelText: 'IA Details',
                                              ),
                                            ),
                                            const SizedBox(height: 15),
                                            ElevatedButton(
                                                onPressed: () {
                                                  advocate_controller.Advocate.addclient(
                                                          nameController.text,
                                                          contactController
                                                              .text,
                                                          addressController
                                                              .text,
                                                          nexthearingdateController
                                                              .text,
                                                          courtcomplexController
                                                              .text,
                                                          casetypeController
                                                              .text,
                                                          casenumberController
                                                              .text,
                                                          caseyearController
                                                              .text,
                                                          iadetailsController
                                                              .text)
                                                      .then((response) {
                                                    if (response == 200) {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                              snackBarSuccess);
                                                    } else {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                              snackBarFailed);
                                                    }
                                                  });
                                                },
                                                child: const Text('Add Client'))
                                          ])),
                                ),
                              ),
                            ],
                          );
                        });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF46920F),
                    padding: const EdgeInsets.all(20.0),
                  ),
                ),
                DataTable(
                  columns: const [
                    DataColumn(
                        label: Text('Client Name',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Contact Number',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Address',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Next Hearing Date',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Court Complex',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Case Type',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Case Number',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Case Year',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('IA Details',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                  ],
                  rows: const [
                    DataRow(cells: [
                      DataCell(Text('1')),
                      DataCell(Text('Arya')),
                      DataCell(Text('6')),
                      DataCell(Text('1')),
                      DataCell(Text('Arya')),
                      DataCell(Text('6')),
                      DataCell(Text('1')),
                      DataCell(Text('Arya')),
                      DataCell(Text('6')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('12')),
                      DataCell(Text('John')),
                      DataCell(Text('9')),
                      DataCell(Text('12')),
                      DataCell(Text('John')),
                      DataCell(Text('9')),
                      DataCell(Text('12')),
                      DataCell(Text('John')),
                      DataCell(Text('9')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('42')),
                      DataCell(Text('Tony')),
                      DataCell(Text('8')),
                      DataCell(Text('42')),
                      DataCell(Text('Tony')),
                      DataCell(Text('8')),
                      DataCell(Text('42')),
                      DataCell(Text('Tony')),
                      DataCell(Text('8')),
                    ]),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
