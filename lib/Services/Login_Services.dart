
import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/material.dart';

import '../constance.dart';

class LoginServices{
  Future getlogin({String? email, password, BuildContext? context}) async {
    var box = Hive.box('login');
    var headers = {
      'Cookie': 'ci_session=7b8d5d53e011803fe34ede127514fe1dec213c21'
    };
    var request = http.MultipartRequest(
        'POST', Uri.parse('${ConstAPI.url}/api/user/login'));
    request.fields.addAll({'email': email!, 'password': password});

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    var responsedata = await http.Response.fromStream(response);

    if (response.statusCode == 200) {
      var jsondata = jsonDecode(responsedata.body);
      if (jsondata['error'] == 0) {
        box.put('email', jsondata['msg']['UserEmail']);
        box.put('userid', jsondata['msg']['mainUserId']);
        box.put('name', jsondata['msg']['name']);
        // Message().scaffoldmessage(context!, "Login Successful");
        // redirecthomepage(context, const SplashScreen());
        // notifyListeners();
      } else {
        // QuickAlert.show(
        //   context: context!,
        //   type: QuickAlertType.error,
        //   text: jsonDecode(responsedata.body)['msg'].toString(),
        //   autoCloseDuration: const Duration(seconds: 2),
        // );
        // Message().scaffoldmessage(
        //     context!, jsonDecode(responsedata.body)['msg'].toString());
        // notifyListeners();
      }
    } else {

    }
  }
}