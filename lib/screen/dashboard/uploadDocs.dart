import 'dart:html';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:nyayaag_client/widget/appbar.dart';
import 'package:nyayaag_client/widget/footer.dart';

import 'package:nyayaag_client/controllers/update.dart' as update_controller;

Widget uploadDocs() {
  FilePickerResult? result;
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
                    const Padding(
                      padding:
                          EdgeInsets.only(right: 20.0, left: 20.0, top: 20.0),
                      child: Text('Upload Documents',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                        onPressed: () async => {uploadFile()},
                        child: Icon(Icons.upload))
                  ]),
            )),
        const SizedBox(height: 150)
      ],
    ),
  );
}

void uploadFile() async {
  FilePickerResult? result = await FilePicker.platform.pickFiles();

  if (result != null) {
    PlatformFile file = result.files.first;
    debugPrint(file.name);
    //debugPrint(file.size);
  } else {
    // User canceled the picker
  }
}
