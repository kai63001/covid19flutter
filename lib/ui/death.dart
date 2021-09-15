import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart' as intl;

class Death extends StatelessWidget {
  const Death({
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
              offset: const Offset(0, 5), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Text(
                    intl.NumberFormat.decimalPattern()
                        .format(today ? count : countAll),
                    style: GoogleFonts.fredokaOne(
                      textStyle: const TextStyle(
                          color: Colors.white, fontSize: 40, letterSpacing: .5),
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
      ),
    );
  }
}
