// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:covid/ui/case.dart';
import 'package:covid/ui/country.dart';
import 'package:covid/ui/death.dart';
import 'package:covid/ui/go_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart' as intl;

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COVID',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Box Main
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white
                ),
                child: Text("romeo"),
              ),
              Case(size: size),
              Country(),
              SizedBox(
                width: size.width * 0.8,
                child: Row(
                  children: const [
                    Death(),
                    SizedBox(
                      width: 10,
                    ),
                    GoHome(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
