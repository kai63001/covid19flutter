import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart' as intl;

class Death extends StatelessWidget {
  const Death({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 130,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.05),
              spreadRadius: 2,
              blurRadius: 5,
              offset:
                  const Offset(0, 5), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Text(
                intl.NumberFormat.decimalPattern().format(144),
                style: GoogleFonts.fredokaOne(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      letterSpacing: .5),
                ),
              ),
              Text(
                'TODAY',
                style: GoogleFonts.fredokaOne(
                  textStyle: TextStyle(
                      color: Colors.grey[400],
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