import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart' as intl;

class Case extends StatelessWidget {
  const Case({
    Key? key,
    required this.size,
    required this.today,
    required this.count,
    required this.countAll,
  }) : super(key: key);

  final Size size;
  final bool today;
  final int count;
  final int countAll;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 130,
        width: size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.white,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/virus.png'),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: size.width * 0.4,
                    height: 60,
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Text(
                        intl.NumberFormat.decimalPattern()
                            .format(today ? count : countAll),
                        style: GoogleFonts.fredokaOne(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              // fontSize: 40,
                              letterSpacing: .5),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    today ? 'TODAY' : 'TOTAL',
                    style: GoogleFonts.fredokaOne(
                      textStyle: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 20,
                          letterSpacing: .5),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
