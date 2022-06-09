import 'package:flutter/material.dart';
import 'package:nyayaag_client/controllers/advocate.dart'
    as advocate_controller;

class ClientBook extends StatefulWidget {
  const ClientBook({Key? key}) : super(key: key);

  @override
  _ClientBook createState() => _ClientBook();
}

class _ClientBook extends State<ClientBook> {
  bool fetched = false;
  List<DataRow> clientsRows = [];
  List<dynamic> clients = [];
  @override
  Widget build(BuildContext context) {
    const snackBarSuccess = SnackBar(
      content: Text('Fetch successful'),
      backgroundColor: Colors.green,
    );
    const snackBarFailed = SnackBar(
      content: Text('No clients found'),
      backgroundColor: Colors.red,
    );
    advocate_controller.Advocate.viewClients().then((response) {
      if (response!.isNotEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(snackBarSuccess);
        if (!fetched) {
          setState(() {
            clients = response;
            fetched = true;
          });
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(snackBarFailed);
      }
    });
    List<DataColumn> _createClientColumns() {
      return [
        const DataColumn(
            label: Text('Client Name',
                style: TextStyle(fontWeight: FontWeight.bold))),
        const DataColumn(
            label: Text('Contact Number',
                style: TextStyle(fontWeight: FontWeight.bold))),
        const DataColumn(
            label:
                Text('Address', style: TextStyle(fontWeight: FontWeight.bold))),
        const DataColumn(
            label: Text('Next Hearing Date',
                style: TextStyle(fontWeight: FontWeight.bold))),
        const DataColumn(
            label: Text('Court Complex',
                style: TextStyle(fontWeight: FontWeight.bold))),
        const DataColumn(
            label: Text('Case Type',
                style: TextStyle(fontWeight: FontWeight.bold))),
        const DataColumn(
            label: Text('Case Number',
                style: TextStyle(fontWeight: FontWeight.bold))),
        const DataColumn(
            label: Text('Case Year',
                style: TextStyle(fontWeight: FontWeight.bold))),
        const DataColumn(
            label: Text('IA Details',
                style: TextStyle(fontWeight: FontWeight.bold))),
      ];
    }

    Wrap _addClientWrap() {
      TextEditingController nameController = TextEditingController();
      TextEditingController contactController = TextEditingController();
      TextEditingController addressController = TextEditingController();
      TextEditingController nexthearingdateController = TextEditingController();
      TextEditingController casetypeController = TextEditingController();
      TextEditingController courtcomplexController = TextEditingController();
      TextEditingController casenumberController = TextEditingController();
      TextEditingController caseyearController = TextEditingController();
      TextEditingController iadetailsController = TextEditingController();
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
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                        controller: nexthearingdateController,
                        decoration: const InputDecoration(
                          labelText: 'Next Hearing Date',
                        ),
                      ),
                      TextFormField(
                        controller: courtcomplexController,
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
                                    contactController.text,
                                    addressController.text,
                                    nexthearingdateController.text,
                                    courtcomplexController.text,
                                    casetypeController.text,
                                    casenumberController.text,
                                    caseyearController.text,
                                    iadetailsController.text)
                                .then((response) {
                              if (response == 200) {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBarSuccess);
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBarFailed);
                              }
                              Navigator.pop(context);
                            });
                          },
                          child: const Text('Add Client'))
                    ]),
              ),
            ),
          ),
        ],
      );
    }

    List<DataRow> _createClientRows() {
      for (int i = 0; i < clients.length; i++) {
        DataRow tmp = DataRow(cells: [
          DataCell(Text(clients[i]['clientName'].toString())),
          DataCell(Text(clients[i]['contactNumber'].toString())),
          DataCell(Text(clients[i]['address'].toString())),
          DataCell(Text(clients[i]['nextHearingDate'].toString())),
          DataCell(Text(clients[i]['courtComplex'].toString())),
          DataCell(Text(clients[i]['caseType'].toString())),
          DataCell(Text(clients[i]['caseNumber'].toString())),
          DataCell(Text(clients[i]['caseYear'].toString())),
          DataCell(Text(clients[i]['IAdetails'].toString()))
        ]);
        clientsRows.add(tmp);
      }
      List<DataRow> emptyRow = [
        const DataRow(cells: [
          DataCell(Text('No data found')),
          DataCell(Text('No data found')),
          DataCell(Text('No data found')),
          DataCell(Text('No data found')),
          DataCell(Text('No data found')),
          DataCell(Text('No data found')),
          DataCell(Text('No data found')),
          DataCell(Text('No data found')),
          DataCell(Text('No data found'))
        ])
      ];
      return clientsRows.isEmpty ? emptyRow : clientsRows;
    }

    return Center(
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
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
                      showModalBottomSheet(
                          constraints:
                              const BoxConstraints(maxWidth: double.infinity),
                          backgroundColor:
                              const Color.fromARGB(255, 227, 255, 188),
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return _addClientWrap();
                          });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF46920F),
                      padding: const EdgeInsets.all(20.0),
                    ),
                  ),
                  DataTable(
                    columns: _createClientColumns(),
                    rows: _createClientRows(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
