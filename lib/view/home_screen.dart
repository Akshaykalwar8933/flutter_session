import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.greenAccent,

      ),
      body: Center(
        child: Icon(
          Icons.home,
          size: 60,
          color: Colors.black,
        ),
      ),
    );
  }
}
