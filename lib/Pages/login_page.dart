import 'package:flutter/material.dart';

import '../constance.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Login",
              style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 38.0),
            child: Text("ইমেইল"),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 38.0,right: 38),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(0.4))
              ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "আপনার ইমেইল",
                      border: InputBorder.none
                    ),
              ),
                ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 38.0),
            child: Text("পাসওয়ার্ড"),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 38.0,right: 38),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.4))
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0,),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: "********",
                    border:InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Center(child: Text("Forget Password?",style: TextStyle(color: ConstColor.primaryColor,fontSize: 16),)),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 48.0,right: 48),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: ConstColor.primaryColor,

              ),
              child: Center(
                  child: Text(
                "লগইন করুন",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
            ),
          ),
          SizedBox(height: 20,),

        ],
      ),
    );
  }
}
