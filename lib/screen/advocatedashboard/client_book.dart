import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nyayaag_client/controllers/advocate.dart'
    as advocate_controller;
import 'package:intl/intl.dart';

class ClientBook extends StatefulWidget {
  const ClientBook({Key? key}) : super(key: key);

  @override
  _ClientBook createState() => _ClientBook();
}

class _ClientBook extends State<ClientBook> {
  bool fetched = false;
  List<DataRow> clientsRows = [];
  List<dynamic> clients = [];
  String _courtComplexValue = "";
  TextEditingController nextHearingDate = TextEditingController();

  @override
  void initState() {
    nextHearingDate.text = ""; //set the initial value of text field
    super.initState();
  }

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
                      TextField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          labelText: 'Client Name',
                        ),
                      ),
                      TextField(
                        controller: contactController,
                        decoration: const InputDecoration(
                            labelText: 'Contact Number',
                            icon: Icon(Icons.contact_page_sharp)),
                      ),
                      TextField(
                        controller: addressController,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.location_city),
                          labelText: 'Address',
                        ),
                      ),
                      TextField(
                        controller:
                            nextHearingDate, //editing controller of this TextField
                        decoration: const InputDecoration(
                            icon:
                                Icon(Icons.calendar_today), //icon of text field
                            labelText: "Hearing Date" //label text of field
                            ),
                        readOnly:
                            true, //set it true, so that user will not able to edit text
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(
                                  2000), //DateTime.now() - not to allow to choose before today.
                              lastDate: DateTime(2101));

                          if (pickedDate != null) {
                            String formattedDate =
                                DateFormat('yyyy-MM-dd').format(pickedDate);

                            setState(() {
                              nextHearingDate.text =
                                  formattedDate; //set output date to TextField value.
                            });
                          } else {
                            print("Date is not selected");
                          }
                        },
                      ),
                      DropdownButton<String>(
                        hint: _courtComplexValue == ""
                            ? const Text('Choose Court Complex')
                            : Text(_courtComplexValue),
                        items: <String>[
                          'Supreme Court',
                          'High Court',
                          'District Court'
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(
                            () {
                              _courtComplexValue = value!;
                            },
                          );
                        },
                      ),
                      TextField(
                        controller: casetypeController,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.cases_rounded),
                          labelText: 'Case Type',
                        ),
                      ),
                      TextField(
                        controller: casenumberController,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.numbers),
                          labelText: 'Case Number',
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                      TextField(
                        controller: caseyearController,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.calendar_today_outlined),
                          labelText: 'Case Year',
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                      TextField(
                        controller: iadetailsController,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.key),
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
                                    nextHearingDate.text,
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
