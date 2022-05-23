import 'package:flutter/material.dart';
import 'package:nyayaag_client/screen/dashboard/blogs.dart';
import 'package:nyayaag_client/screen/dashboard/uploadDocs.dart';
import 'package:nyayaag_client/widget/appbar.dart';
import 'package:nyayaag_client/widget/footer.dart';

import 'package:nyayaag_client/controllers/update.dart' as update_controller;

class AdvocateDashboard extends StatefulWidget {
  const AdvocateDashboard({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AdvocateDashboard> createState() => _AdvocateDashboardState();
}

class _AdvocateDashboardState extends State<AdvocateDashboard> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NyayaagAppBarWidget(
        appBar: AppBar(),
      ),
      body: Container(
        color: Color.fromARGB(255, 176, 198, 146),
        child: Row(
          children: <Widget>[
            NavigationRail(
              extended: true,
              backgroundColor: Colors.black,
              selectedIndex: _selectedIndex,
              selectedLabelTextStyle: const TextStyle(
                  color: Colors.green,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
              unselectedLabelTextStyle:
                  const TextStyle(color: Colors.white, fontSize: 16),
              selectedIconTheme: const IconThemeData(color: Colors.green),
              unselectedIconTheme: const IconThemeData(color: Colors.white),
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              labelType: NavigationRailLabelType.none,
              destinations: const <NavigationRailDestination>[
                NavigationRailDestination(
                  icon: Icon(Icons.auto_stories_outlined),
                  label: Text('Library'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.business_center_outlined),
                  label: Text('Careers'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.book),
                  label: Text('Blogs'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.upload_file_outlined),
                  label: Text('Upload'),
                ),
              ],
            ),
            const VerticalDivider(thickness: 5, width: 1),
            // This is the main content.
            Flexible(
              child: SingleChildScrollView(
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 176, 198, 146)),
                    child: _selectedIndex == 0
                        ? const Center(
                            child: Text('Hi'),
                          )
                        : _selectedIndex == 1
                            ? const Center(
                                child: Text('Yo'),
                              )
                            : _selectedIndex == 2
                                ? blogs()
                                : uploadDocs()),
              ),
            )
          ],
        ),
      ),
      bottomSheet: const NyayaagFooterWidget(),
    );
  }
}
