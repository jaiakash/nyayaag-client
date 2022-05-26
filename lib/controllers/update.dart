import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Update {
  static var dio = Dio();
  static Future<int?> student(String name, String college, String rollno,
      String course, String duration, String address, String pincode) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final String? session = prefs.getString('session');
      var userData = {
        'studentName': name,
        'nameOfCollege': college,
        'RollNo': rollno,
        'Course': course,
        'CourseDuration': duration,
        'address': address,
        'pincode': pincode,
        'userID': session
      };
      Response response = await dio
          .post(dotenv.env['BACKEND_URL']! + '/student/update', data: userData);
      return response.statusCode;
    } catch (e) {
      print(e);
    }
    return 0;
  }

  static Future<int?> advocatepersonal(
      String salutation,
      String firstName,
      String middleName,
      String lastName,
      String gender,
      String emailAddress,
      String dob,
      String phoneNo) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final String? session = prefs.getString('session');
      var userData = {
        'salutation': salutation,
        'firstName': firstName,
        'middleName': middleName,
        'lastName': lastName,
        'gender': gender,
        'emailAddress': emailAddress,
        'DOB': dob,
        'phoneNo': phoneNo,
        'userID': session
      };
      return (await dio.post(dotenv.env['BACKEND_URL']! + '/advocate/updatePersonalDetails',
              data: userData))
          .statusCode;
    } catch (e) {
      print(e);
    }
    return 0;
  }

  static Future<int?> advocatebar(
      String state,
      String district,
      String barCouncilNumber,
      String areaOfPractice,
      String specialization,
      String officeAddress,
      String pinCode) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final String? session = prefs.getString('session');
      var userData = {
        'state': state,
        'district': district,
        'barCouncilNumber': barCouncilNumber,
        'areaOfPractice': areaOfPractice,
        'specialization': specialization,
        'officeAddress': officeAddress,
        'pinCode': pinCode,
        'userID': session
      };
      return (await dio.post(dotenv.env['BACKEND_URL']! + '/advocate/updateAdvocateBarDetails',
              data: userData))
          .statusCode;
    } catch (e) {
      print(e);
    }
    return 0;
  }
}
