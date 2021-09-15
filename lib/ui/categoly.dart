
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categoly extends StatelessWidget {
  const Categoly({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                      color: Colors.orange[800],
                      borderRadius: const BorderRadius.all(
                          Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/images/emergency-call.png",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Emergency',
                    style: GoogleFonts.fredokaOne(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          letterSpacing: .5),
                    ),
                  ),
                ],
              ),
            )));
  }
}
