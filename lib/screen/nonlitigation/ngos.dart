import 'package:flutter/material.dart';
import 'package:nyayaag_client/responsive.dart';
import 'package:nyayaag_client/widget/appbar.dart';
import 'package:nyayaag_client/widget/bulletList.dart';
import 'package:nyayaag_client/widget/footer.dart';

class NgosPage extends StatefulWidget {
  const NgosPage({Key? key}) : super(key: key);

  @override
  State<NgosPage> createState() => _NgosPageState();
}

class _NgosPageState extends State<NgosPage> {
  @override
  Widget build(context) {
    return SafeArea(
      child: Scaffold(
        appBar: NyayaagAppBarWidget(
          appBar: AppBar(),
        ),
        backgroundColor: Color.fromARGB(255, 176, 198, 146),
        body: SingleChildScrollView(
          child: Responsive(
            mobile: _mobileBody(),
            tablet: _tabletBody(),
            desktop: _desktopBody(),
          ),
        ),
        bottomSheet: const NyayaagFooterWidget(),
      ),
    );
  }

  Widget _tabletBody() {
    return const Center(
        child: Text('tablet ui will design later',
            style: TextStyle(color: Colors.white)));
  }

  Widget _mobileBody() {
    return const Center(
        child: Text('mobile ui will design later',
            style: TextStyle(color: Colors.white)));
  }

  Widget _desktopBody() {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 50),
          const Text('NGO CASES',
              style: TextStyle(
                  fontSize: 60.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black)),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
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
                                          CrossAxisAlignment.center,
                                      children: const [
                                        BulletList([
                                          'Proof of identity - self attested copies of Id proof for the trust and trustee (passport/voters ID/adhaar card/driving License)',
                                          'Address proof of registered office - copy of property registration certificate or copy of an utility bill (water bill/electricity bill)',
                                          'Trust deed on stamp paper - the value of the stamp paper is a certain percentage of the total property value belonging to the trust. The percentage differs from state to state.',
                                          'NOC from the property owner (for rental property)',
                                          'Passport - sized photographs of the trust member and trustee and witness present while signing the deed.',
                                          'A complete drafted trust deed',
                                          'Prrof of registered office',
                                          'ID proof of the founder of the trust',
                                          'Two witnesses'
                                        ]),
                                      ],
                                    )),
                              ),
                            ),
                          ],
                        );
                      });
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                      const TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black)),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15.0, top: 15.0),
                      child: Container(
                          height: 300,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage('ngos/trustReg.jpg'),
                                  fit: BoxFit.fill))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 220.0),
                      child: Container(
                          height: 40,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle, color: Colors.white),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Trust Registration',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 80),
              ElevatedButton(
                onPressed: () {
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
                                          CrossAxisAlignment.center,
                                      children: const [
                                        BulletList([
                                          'PAN Card',
                                          'Resident Proof',
                                          'Memorandum of association (MOA)',
                                          'Article of Association (AOA)',
                                          'Covering letter',
                                          'Proof of address',
                                          'List of all members of the society',
                                          'Declaration by the president of the society',
                                        ]),
                                      ],
                                    )),
                              ),
                            ),
                          ],
                        );
                      });
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                      const TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black)),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child: Container(
                          height: 300,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage('ngos/societyReg.jpg'),
                                  fit: BoxFit.fill))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 220.0),
                      child: Container(
                          height: 40,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle, color: Colors.white),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Society Registration',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
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
                                          CrossAxisAlignment.center,
                                      children: const [
                                        BulletList([
                                          'DSC and DIN of the directors',
                                          'Objectives and proposed work of the company',
                                          'Financial statements like assets and liabilities the projection for five years etc',
                                          'Directors personal documents',
                                          'Registered office address documents, rental agreement orsale deed in the name of the company utility bills not older than two months',
                                        ]),
                                      ],
                                    )),
                              ),
                            ),
                          ],
                        );
                      });
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                      const TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black)),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child: Container(
                          height: 300,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage('ngos/section8.jpg'),
                                  fit: BoxFit.fill))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 220.0),
                      child: Container(
                          height: 40,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle, color: Colors.white),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Section-8',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 80),
              ElevatedButton(
                onPressed: () {
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
                                          CrossAxisAlignment.center,
                                      children: const [
                                        BulletList([
                                          'Registered trust deed/society registration certificate/incorportaion certificate',
                                          'Self ceryified copies of audited annual accounts for the proceeding three financial years',
                                          'NGO Darpen ID (if receiving government grants)',
                                          'FCRA ID (if receiving foreign donations)',
                                          'Self certified copy of the certification previously obtained under 12A & 80G',
                                          'A note on the activities of the application',
                                        ]),
                                      ],
                                    )),
                              ),
                            ),
                          ],
                        );
                      });
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                      const TextStyle(
                          fontWeight: FontWeight.normal, color: Colors.black)),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child: Container(
                          height: 300,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage('ngos/12a80g.jpg'),
                                  fit: BoxFit.fill))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 220.0),
                      child: Container(
                          height: 40,
                          width: 470,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle, color: Colors.white),
                          child: const Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              'Section 12-A and 80G',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 150),
        ],
      ),
    );
  }
}
