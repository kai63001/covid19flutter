// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Country extends StatelessWidget {
  const Country({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        transform: Matrix4.translationValues(0.0, -25.0, 0.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(100)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.05),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 5), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/thailand.png',
                width: 30,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'THAILAND',
                style: GoogleFonts.fredokaOne(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      letterSpacing: .5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
