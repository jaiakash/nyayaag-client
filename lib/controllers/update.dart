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
        'pincode': pincode
      };
      dio.options.headers["session"] = session;
      Response response = await dio
          .post(dotenv.env['BACKEND_URL']! + '/student/update', data: userData);
      return response.statusCode;
    } catch (e) {
      print(e);
    }
    return 0;
  }

  static Future<int?> advocate(
      String state,
      String district,
      String barCouncilNumber,
      String areaOfPractice,
      String specialization,
      String officeAddress,
      String pinCode) async {
    try {
      var userData = {
        'state': state,
        'district': district,
        'barCouncilNumber': barCouncilNumber,
        'areaOfPractice': areaOfPractice,
        'specialization': specialization,
        'officeAddress': officeAddress,
        'pinCode': pinCode,
      };
      return (await dio.post(dotenv.env['BACKEND_URL']! + '/advocate/update',
              data: userData))
          .statusCode;
    } catch (e) {
      print(e);
    }
    return 0;
  }
}
