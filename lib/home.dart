import 'dart:ui';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Body Mass Index"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text("Home Page",style: TextStyle(color: Colors.yellow,fontSize: 30),)
            ],
          ),
        ),
      ),
    );
  }
}
