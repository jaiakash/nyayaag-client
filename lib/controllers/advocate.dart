import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Advocate {
  static var dio = Dio();
  static Future<List<dynamic>?> viewClients() async {
    try {
      Response response =
          await dio.post(dotenv.env['BACKEND_URL']! + '/advocate/viewClients');
      List<dynamic> clients = json.decode(response.data['data']);
      if (response.statusCode == 200) {
        return clients;
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  static Future<int?> addclient(
      String name,
      String contact,
      String address,
      String nexthear,
      String courtcomplex,
      String casetype,
      String casenumber,
      String caseyear,
      String iadetails) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final String? session = prefs.getString('session');
      var userData = {
        'clientName': name,
        'contactNumber': contact,
        'address': address,
        'nextHearingDate': nexthear,
        'courtComplex': courtcomplex,
        'caseType': casetype,
        'caseNumber': casenumber,
        'caseYear': caseyear,
        'IAdetails': iadetails,
        'userID': session
      };
      Response response = await dio.post(
          dotenv.env['BACKEND_URL']! + '/advocate/addClient',
          data: userData);
      return response.statusCode;
    } catch (e) {
      print(e);
    }
    return 0;
  }
}
