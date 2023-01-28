import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UiPhone4 extends StatelessWidget {
  const UiPhone4({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'VISION',
                style: GoogleFonts.dmSerifText(
                    color: Colors.greenAccent,
                    fontSize: 45,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
            ),
            Text(
              textAlign: TextAlign.left,
              '- To become the leading tea sales website in Indonesia and Asia\n- To offer a seamless, safe and comfortable online shopping experience for customers.\n- To provide a wide range of high-quality teas from various regions.\n- To be a socially responsible and environmentally conscious company.',
              style: GoogleFonts.luxuriousRoman(),
            )
          ],
        ),
      ),
    );
  }
}
