// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart' as intl;

class GoHome extends StatelessWidget {
  const GoHome({
    Key? key,
    required this.today,
    required this.count,
    required this.countAll,
  }) : super(key: key);
  final bool today;
  final int count;
  final int countAll;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.05),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 5), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            SizedBox(
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Text(
                    intl.NumberFormat.decimalPattern()
                        .format(today ? count : countAll),
                    style: GoogleFonts.fredokaOne(
                      textStyle: const TextStyle(
                          color: Colors.green, fontSize: 40, letterSpacing: .5),
                    ),
                  ),
                ),
              ),
            Text(
              today ? 'TODAY' : 'TOTAL',
              style: GoogleFonts.fredokaOne(
                textStyle: TextStyle(
                    color: Colors.grey[400], fontSize: 20, letterSpacing: .5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
