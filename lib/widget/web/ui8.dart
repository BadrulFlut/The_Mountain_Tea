import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ui8 extends StatefulWidget {
  const Ui8({super.key});

  @override
  State<Ui8> createState() => _Ui8State();
}

class _Ui8State extends State<Ui8> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: height / 14,
        child: Text(
          '©2023 The Mountain Tea. All Rights Reserved.',
          style: GoogleFonts.montserrat(fontSize: 13),
        ));
  }
}
