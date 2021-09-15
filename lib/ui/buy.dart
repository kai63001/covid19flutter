import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Buy extends StatelessWidget {
  const Buy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 175,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.1),
            child: Container(
                width: 170,
                height: 170,
                decoration: BoxDecoration(
                  color: Colors.white,
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
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Image.asset('assets/images/face-mask.png'),
                    ),
                    Positioned(
                      right: 7,
                      bottom: 7,
                      child: Text(
                        '9 Bath',
                        style: GoogleFonts.fredokaOne(
                          textStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              letterSpacing: .5),
                        ),
                      ),
                    )
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
                width: 170,
                decoration: BoxDecoration(
                  color: Colors.white,
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
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Image.asset('assets/images/disinfectant.png'),
                    ),
                    Positioned(
                      right: 7,
                      bottom: 7,
                      child: Text(
                        '99 Bath',
                        style: GoogleFonts.fredokaOne(
                          textStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              letterSpacing: .5),
                        ),
                      ),
                    )
                  ],
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: size.width * 0.1),
            child: Container(
                width: 170,
                decoration: BoxDecoration(
                  color: Colors.white,
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
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Image.asset('assets/images/vaccine.png'),
                    ),
                    Positioned(
                      right: 7,
                      bottom: 7,
                      child: Text(
                        '5,300 Bath',
                        style: GoogleFonts.fredokaOne(
                          textStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              letterSpacing: .5),
                        ),
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
