import 'package:flutter/material.dart';
import 'package:nyayaag_client/controllers/advocate.dart'
    as advocate_controller;

class AdvocateSearch extends StatefulWidget {
  const AdvocateSearch({Key? key}) : super(key: key);

  @override
  _AdvocateSearch createState() => _AdvocateSearch();
}

class _AdvocateSearch extends State<AdvocateSearch> {
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
                    onPressed: () {},
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
