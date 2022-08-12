import 'package:flutter/material.dart';
import 'package:nyayaag_client/screen/clientdashboard/profile.dart';
import 'package:nyayaag_client/screen/clientdashboard/advocate_search.dart';
import 'package:nyayaag_client/widget/appbar.dart';
import 'package:nyayaag_client/widget/footer.dart';

class ClientDashboard extends StatefulWidget {
  const ClientDashboard({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ClientDashboard> createState() => _ClientDashboardState();
}

class _ClientDashboardState extends State<ClientDashboard> {
  int _selectedIndex = 1;
  int groupValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NyayaagAppBarWidget(
        appBar: AppBar(),
      ),
      body: Container(
        color: const Color.fromARGB(255, 176, 198, 146),
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
                  icon: Icon(Icons.portrait),
                  label: Text('Profile'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.auto_stories_outlined),
                  label: Text('Search Advocate'),
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
                      ? const Profile()
                      : const AdvocateSearch(),
                ),
              ),
            )
          ],
        ),
      ),
      bottomSheet: const NyayaagFooterWidget(),
    );
  }
}
