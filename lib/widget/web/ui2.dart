import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ui2 extends StatefulWidget {
  const Ui2({super.key});

  @override
  State<Ui2> createState() => _Ui2State();
}

class _Ui2State extends State<Ui2> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(bottom: 80),
      height: height / 2,
      width: double.infinity,
      child: Stack(
        children: [
          Center(
            child: Text(
              'MOUNTAIN TEA',
              style: GoogleFonts.montserrat(
                  fontSize: 120,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(36, 105, 240, 175)),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Text(
                'The Indonesian Tea Supplier\nCompany',
                textAlign: TextAlign.center,
                style: GoogleFonts.cormorantUpright(
                  fontSize: 40,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
