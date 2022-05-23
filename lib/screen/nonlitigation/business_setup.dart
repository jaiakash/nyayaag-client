import 'package:flutter/material.dart';
import 'package:nyayaag_client/responsive.dart';
import 'package:nyayaag_client/widget/appbar.dart';
import 'package:nyayaag_client/widget/bulletList.dart';
import 'package:nyayaag_client/widget/footer.dart';

class BusinessSetupPage extends StatefulWidget {
  const BusinessSetupPage({Key? key}) : super(key: key);

  @override
  State<BusinessSetupPage> createState() => _BusinessSetupPageState();
}

class _BusinessSetupPageState extends State<BusinessSetupPage> {
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
          const Text('BUSINESS SETUP CASES',
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
                                          CrossAxisAlignment.start,
                                      children: const [
                                        SizedBox(height: 10),
                                        Text(
                                          'Identity and Address Proof',
                                        ),
                                        BulletList([
                                          'Scanned copy of PAN Card or Passport (Foreign Nationals and NRIs)',
                                          'Scanned copy of voter ID/Passport/Driving License',
                                          'Scanned copy of latest bank statement/telephone or mobile bill/electricity or gas bill',
                                          'Scanned passport sized photograph speciment signature (blank document with signature of directors only)',
                                        ]),
                                        SizedBox(height: 15),
                                        Text('Registred Office Proof'),
                                        BulletList([
                                          'Scanned copy of the latest bank statement/telephone or mobile bill/electricity or gas bill',
                                          'Scanned copy of no-objection certificate from the property owner',
                                          'Scanned copy of sale deed/property deed in English(in case of owned property)'
                                        ]),
                                        SizedBox(height: 15),
                                        Text(
                                            'Note: your registerd office need not be a commercial space. It can be your residence too.'),
                                        SizedBox(height: 15)
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
                                  image: AssetImage(
                                      'businessSetup/privateLimited.jpg'),
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
                              'Private Limited Company',
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
                                          CrossAxisAlignment.start,
                                      children: const [
                                        BulletList([
                                          'PAN Card or Passport (Foreign Nationals or NRIs)',
                                          'Scanned transcript of drivers license or voter\'s ID',
                                          'Updated gas or electricity invoice/bank account statement/mobile or landline phone invoice',
                                          'Specimen signature or impression',
                                          'Passport size photo'
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
                                  image:
                                      AssetImage('businessSetup/onePerson.png'),
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
                              'One Person Company',
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
                                          CrossAxisAlignment.start,
                                      children: const [
                                        BulletList([
                                          'Self attested copy of PAN Card',
                                          'Self attested copy of driver\'s license/voter ID/Aadhaar card/Passport',
                                          'Self attested copy of bank statement/telephone bill/mobile bill/electricity bill',
                                          'Passport size photograph',
                                          'Specimen signature certificate'
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
                                  image: AssetImage(
                                      'businessSetup/nidhiCompany.jpg'),
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
                              'Nidhi Company',
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
                                          CrossAxisAlignment.start,
                                      children: const [
                                        SizedBox(height: 15),
                                        Text('From partner:'),
                                        BulletList([
                                          'PAN Card or passport',
                                          'Aadhar card/ voter ID/ Passport/ Driving licence',
                                          'Latest bank statement/ telephone bill/ mobile bill/ electricity bill/ gas bill',
                                          'Passport size photograph',
                                          'Blank documnet with specimen signature'
                                        ]),
                                        SizedBox(height: 10),
                                        Text(
                                            'Note: one partner must self-attest the 1 st three documents in case of foreign nationals or NRI\'s all the documents must be noticed (if currently in India or a non-common wealth country) or apostilled (if from a commonwealth country)'),
                                        SizedBox(height: 15),
                                        Text('For the registered office: '),
                                        BulletList([
                                          'Utility bills',
                                          'Notarized rental agreement in English',
                                          'No objection certificate from the property owner',
                                          'Sale deed/property deed in English(in case of owned property)'
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
                                  image: AssetImage(
                                      'businessSetup/limitedLiability.jpg'),
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
                              'Limited Liability Partnership',
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
                                          CrossAxisAlignment.start,
                                      children: const [
                                        BulletList([
                                          'Application for registration of partnership (form 1)',
                                          'Certified original copy of partnership deed',
                                          'Specimen of an affidavit certifying are the details mentioned in the partnership deed and documents are correct',
                                          'PAN card and address prrof of the partners',
                                          'Proof of principal place of business of the firm'
                                        ]),
                                        SizedBox(height: 10),
                                        Text(
                                            'Note: If the documents satisfy the registrar, the firm will be entered into the register or firms and a certificate or registration will be issued.'),
                                        SizedBox(height: 15)
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
                                  image: AssetImage(
                                      'businessSetup/partnership.jpg'),
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
                              'Partnership Firm',
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
                onPressed: () {},
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
                                  image: AssetImage(
                                      'businessSetup/startUpIndia.jpg'),
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
                              'Start Up India Registration',
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
                                          CrossAxisAlignment.start,
                                      children: const [
                                        BulletList([
                                          'Applicants Aadhar card',
                                          'Applicants PAN',
                                          'Company PAN (Not applicable in case of a proprietorship firm)'
                                        ]),
                                        SizedBox(height: 10),
                                        Text(
                                            'Note: If the documents satisfy the registrar, the firm will be entered into the register or firms and a certificate or registration will be issued.'),
                                        SizedBox(height: 15)
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
                                  image: AssetImage('businessSetup/msme.png'),
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
                              'MSME Registration',
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
                                          CrossAxisAlignment.start,
                                      children: const [
                                        SizedBox(height: 15),
                                        Text('Private Limited Company'),
                                        BulletList([
                                          'Certificate of incorporation',
                                          'PAN card of company',
                                          'Articles of association (AOA)',
                                          'Memorandum of association (MOA)',
                                          'Resolution signed by board members',
                                          'Identity and address proof of directors',
                                          'Digital signature',
                                          'Directors proof'
                                        ]),
                                        SizedBox(height: 15),
                                        Text('LLP'),
                                        BulletList([
                                          'PAN card of LLP',
                                          'LLP agreement',
                                          'Partners name and address proof'
                                        ]),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text('Individual/Proprietorship'),
                                        BulletList([
                                          'PAN card',
                                          'Address proof of proprietor'
                                        ])
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
                                  image: AssetImage('businessSetup/gst.jpg'),
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
                              'GST Registration',
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
                onPressed: () {},
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
                                  image: AssetImage('businessSetup/esipf.jpg'),
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
                              'ESI/PF Registration',
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
                                          CrossAxisAlignment.start,
                                      children: const [
                                        BulletList([
                                          'Scope of business',
                                          'ID proof or address proof of authorized person'
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
                                  image: AssetImage('businessSetup/iso.jpg'),
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
                              'ISO Certification',
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
                                          CrossAxisAlignment.start,
                                      children: const [
                                        BulletList([
                                          'An identity proof that contains a photograph',
                                          'A passport-sized photograph'
                                        ]),
                                        SizedBox(height: 15),
                                        Text('State & Central License'),
                                        BulletList([
                                          'Proof of address',
                                          'A passport-sized photograph',
                                          'A list of directors of partners',
                                          'A certificate of incorporation',
                                          'The MOA and AOA of the business',
                                          'An identity proof that contains a photograph',
                                          'No objection certificate from one local community',
                                          'Self declaration will be prepared by us and shared for signature'
                                        ])
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
                                  image: AssetImage('businessSetup/fssai.jpg'),
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
                              'FSSAI License',
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
                                          CrossAxisAlignment.start,
                                      children: const [
                                        BulletList([
                                          'PAN card of the company (not applicable in case of the proprietor)',
                                          'Applicants PAN & Adhaar card (driving license & Adhaar)',
                                          'Incorporation certificate/Partnership deed',
                                          'Address proof (Electricity bill/ rental agreement/ sale deed of the location)',
                                          'Copy of cancelled cheque leaf/ banker certificate of the current account in the name of the company'
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
                                  image: AssetImage(
                                      'businessSetup/importExport.jpg'),
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
                              'Import Export Code Registration',
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
