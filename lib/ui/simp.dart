
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Simp extends StatelessWidget {
  const Simp({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width * 0.8,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 5), // changes position of shadow
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
                right: -35,
                bottom: -100,
                child: Image.asset(
                  'assets/images/check.png',
                  width: 150,
                )),
            Padding(
              padding: const EdgeInsets.only(top:18.0,left:18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '5 Simptoms \nabout Covid-19',
                    style: GoogleFonts.fredokaOne(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          letterSpacing: .5),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.circular(5)),
                        color: Colors.grey),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Learn more',
                        style: GoogleFonts.fredokaOne(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              letterSpacing: .5),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
