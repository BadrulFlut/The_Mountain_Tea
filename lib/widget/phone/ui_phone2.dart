import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UiPhone2 extends StatelessWidget {
  const UiPhone2({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      height: height / 2.8,
      child: Stack(
        children: [
          Center(
            child: Text(
              'MOUNTAIN TEA',
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(36, 105, 240, 175)),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Text(
                'The Indonesian Tea Supplier\nCompany',
                textAlign: TextAlign.center,
                style: GoogleFonts.cormorantUpright(
                  fontSize: 30,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
