import 'package:flutter/material.dart';
import 'package:nyayaag_client/widget/appbar.dart';
import 'package:nyayaag_client/widget/footer.dart';

import 'package:nyayaag_client/controllers/update.dart' as update_controller;

Widget blogs() {
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
                      child: Text('Add New Blog',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      initialValue: null,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Blog Title',
                          labelStyle: TextStyle(fontSize: 18),
                          contentPadding: EdgeInsets.all(8),
                          errorStyle: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          )),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      minLines: 3,
                      maxLines: 100,
                      initialValue: null,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Blog Content',
                          labelStyle: TextStyle(fontSize: 18),
                          contentPadding: EdgeInsets.all(8),
                          errorStyle: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          )),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                        child: const Text(
                          'Submit',
                          style: TextStyle(fontSize: 18),
                        ),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFF46920F),
                            padding: const EdgeInsets.all(20.0))),
                  ]),
            )),
        const SizedBox(height: 20),
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
                      child: Text('My Blogs',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 15),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 6,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              right: 20.0, left: 20.0, top: 20.0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shadowColor: MaterialStateProperty.all<Color>(
                                  Colors.green),
                              overlayColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              textStyle: MaterialStateProperty.all<TextStyle>(
                                  const TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black)),
                            ),
                            onPressed: () => {},
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text('Blog title',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    const SizedBox(height: 5),
                                    Text(
                                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: Colors.green, fontSize: 18)),
                                    SizedBox(height: 10)
                                  ]),
                            ),
                          ),
                        );
                      },
                    )
                  ]),
            )),
        const SizedBox(height: 150)
      ],
    ),
  );
}
