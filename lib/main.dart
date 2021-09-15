// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'dart:convert';

import 'package:covid/ui/case.dart';
import 'package:covid/ui/categoly.dart';
import 'package:covid/ui/country.dart';
import 'package:covid/ui/death.dart';
import 'package:covid/ui/go_home.dart';
import 'package:covid/ui/simp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

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
  bool today = true;

  void changeType(type) {
    setState(() {
      today = type;
    });
  }

  Map<String, dynamic> covidData = {};

  @override
  void initState() {
    super.initState();
    fetchCovidData();
  }

  Future fetchCovidData() async {
    var response = await http.get(
        Uri.parse("https://static.easysunday.com/covid-19/getTodayCases.json"));
    if (response.statusCode == 200) {
      setState(() {
        covidData = jsonDecode(response.body);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (covidData["country"] == null) {
      return Scaffold(
        body: Center(child: Text("LOADING")),
      );
    }
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
              selectionCase(size),
              Case(
                size: size,
                count: covidData["todayCases"],
                today: today,
                countAll: covidData["cases"],
              ),
              Country(),
              SizedBox(
                width: size.width * 0.8,
                child: Row(
                  children: [
                    Death(
                      countAll: covidData["deaths"],
                      today: today,
                      count: covidData["todayDeaths"],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GoHome(
                      countAll: covidData["recovered"],
                      today: today,
                      count: covidData["todayRecovered"],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Simp(size: size),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: size.width * 0.8,
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.05),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(
                                      0, 5), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        "assets/images/hospital.png",
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Hospital',
                                    style: GoogleFonts.fredokaOne(
                                      textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          letterSpacing: .5),
                                    ),
                                  ),
                                ],
                              ),
                            ))),
                    SizedBox(
                      width: 10,
                    ),
                    Categoly(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container selectionCase(Size size) {
    return Container(
      width: size.width * 0.8,
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(width: 2.0, color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(3))),
      child: Center(
        child: Stack(
          children: [
            AnimatedPositioned(
              // left: 7,
              left: today ? 7 : size.width * 0.42,
              top: 7,
              duration: Duration(milliseconds: 200),
              child: Container(
                height: 30,
                width: size.width * 0.35,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(3))),
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () => {changeType(true)},
                  child: Center(
                    child: Text(
                      'TODAY',
                      style: GoogleFonts.fredokaOne(
                        textStyle: TextStyle(
                            color: today ? Colors.white : Colors.black,
                            fontSize: 15,
                            letterSpacing: .5),
                      ),
                    ),
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () => {changeType(false)},
                  child: Center(
                    child: Text(
                      'TOTAL',
                      style: GoogleFonts.fredokaOne(
                        textStyle: TextStyle(
                            color: !today ? Colors.white : Colors.black,
                            fontSize: 15,
                            letterSpacing: .5),
                      ),
                    ),
                  ),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
