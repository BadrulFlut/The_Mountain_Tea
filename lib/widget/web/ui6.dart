import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ui6 extends StatefulWidget {
  const Ui6({super.key});

  @override
  State<Ui6> createState() => _Ui6State();
}

class _Ui6State extends State<Ui6> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Padding(
              padding: EdgeInsets.only(
                top: 50,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 2,
                    color: Colors.greenAccent,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.coffee,
                    size: 24.0,
                    color: Colors.greenAccent,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 100,
                    height: 2,
                    color: Colors.greenAccent,
                  )
                ],
              ),
            )),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 40),
              child: Text(
                'Our Feature',
                style: GoogleFonts.courgette(fontSize: 40),
              ),
            )),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: width / 4.2,
                  height: height / 2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 10,
                            color: Colors.greenAccent,
                            offset: Offset(10, 10))
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Center(
                            child: Icon(
                              Icons.shield,
                              size: 35.0,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Text('Quality',
                            style: GoogleFonts.montserrat(
                              fontSize: 22,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Indulge in the luxurious taste and soothing properties of our premium tea blends, made with the highest-grade ingredients and masterfully crafted for the ultimate tea connoisseur.',
                          style: GoogleFonts.montserrat(fontSize: 15),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: width / 4.2,
                  height: height / 2,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 10,
                            color: Colors.greenAccent,
                            offset: Offset(10, 10))
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Center(
                            child: Icon(
                              Icons.handshake,
                              size: 35.0,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Text('Commitment',
                            style: GoogleFonts.montserrat(
                              fontSize: 22,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Our commitment to integrity is unwavering. We strive to conduct our business with the highest ethical standards and are dedicated to being a responsible and trustworthy member of the tea industry.',
                          style: GoogleFonts.montserrat(fontSize: 15),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: width / 4.2,
                  height: height / 2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 10,
                          color: Colors.greenAccent,
                          offset: Offset(10, 10))
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Center(
                            child: Icon(
                              Icons.local_convenience_store,
                              size: 35.0,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Text('Integrity',
                            style: GoogleFonts.montserrat(
                              fontSize: 22,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Integrity is at the core of our tea business. We are committed to providing high-quality, ethically-sourced products while maintaining transparency and honesty in all of our operations.',
                          style: GoogleFonts.montserrat(fontSize: 15),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
