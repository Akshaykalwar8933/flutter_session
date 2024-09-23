// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:session/view/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    shape: BoxShape.circle),
                child: Icon(
                  Icons.person,
                  size: 55,
                )),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter Your Email",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    // color: Colors.purple
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter Your Password",
                  hintStyle: TextStyle(
                    fontSize: 14,
                    // color: Colors.purple
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent);
                  var sp = await SharedPreferences.getInstance();
                  sp.setBool(SplashScreenState.keyLogin, true);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text("Login")),
          ],
        ),
      ),
    );
  }
}
