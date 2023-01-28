import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UiPhone1 extends StatefulWidget {
  const UiPhone1({super.key});

  @override
  State<UiPhone1> createState() => _UiPhone1State();
}

class _UiPhone1State extends State<UiPhone1> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        height: height / 1.04,
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset(
              "assets/image/teh.png",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
              color: Color.fromARGB(134, 0, 0, 0),
              colorBlendMode: BlendMode.colorBurn,
              filterQuality: FilterQuality.high,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, right: 20, left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text('Good think with good\ntea',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.courierPrime(
                          color: Colors.greenAccent,
                          fontSize: 22,
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text('MOUNTAIN TEA',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 33,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                        'Experience the unparalleled taste of hand-picked, authentic mountain tea, that brings the serenity of a mountain top to every sip',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 16,
                        )),
                  ),
                  SizedBox(
                    height: height / 9,
                  ),
                  Center(
                    child: Container(
                      width: double.infinity,
                      height: height / 2,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 5,
                                color: Color.fromARGB(185, 0, 0, 0),
                                offset: Offset(0, 20))
                          ],
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              filterQuality: FilterQuality.high,
                              image: AssetImage('assets/image/peta.png'))),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            )
          ],
        ));
  }
}
