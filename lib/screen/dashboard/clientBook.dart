import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

Widget clientBook(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(30.0),
    child: Column(
      children: [
        Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                        child: const Text(
                          'Add New Client',
                          style: TextStyle(fontSize: 18),
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                              constraints: const BoxConstraints(
                                  maxWidth: double.infinity),
                              backgroundColor:
                                  Color.fromARGB(255, 227, 255, 188),
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
                                                    decoration:
                                                        const InputDecoration(
                                                      labelText: 'Client Name',
                                                    ),
                                                  ),
                                                  TextFormField(
                                                    decoration:
                                                        const InputDecoration(
                                                      labelText:
                                                          'Contact Number',
                                                    ),
                                                  ),
                                                  TextFormField(
                                                    decoration:
                                                        const InputDecoration(
                                                      labelText: 'Address',
                                                    ),
                                                  ),
                                                  TextFormField(
                                                    decoration:
                                                        const InputDecoration(
                                                      labelText:
                                                          'Next Hearing Date',
                                                    ),
                                                  ),
                                                  TextFormField(
                                                    decoration:
                                                        const InputDecoration(
                                                      labelText:
                                                          'Court Complex',
                                                    ),
                                                  ),
                                                  TextFormField(
                                                    decoration:
                                                        const InputDecoration(
                                                      labelText: 'Case Type',
                                                    ),
                                                  ),
                                                  TextFormField(
                                                    decoration:
                                                        const InputDecoration(
                                                      labelText: 'Case Number',
                                                    ),
                                                  ),
                                                  TextFormField(
                                                    decoration:
                                                        const InputDecoration(
                                                      labelText: 'Case Year',
                                                    ),
                                                  ),
                                                  TextFormField(
                                                    decoration:
                                                        const InputDecoration(
                                                      labelText: 'IA Details',
                                                    ),
                                                  ),
                                                  SizedBox(height: 15),
                                                  ElevatedButton(
                                                      onPressed: () {},
                                                      child: Text('Add Client'))
                                                ])),
                                      ),
                                    ),
                                  ],
                                );
                              });
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFF46920F),
                            padding: const EdgeInsets.all(20.0))),
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
                      rows: [
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
                  ]),
            )),
        const SizedBox(height: 150)
      ],
    ),
  );
}
