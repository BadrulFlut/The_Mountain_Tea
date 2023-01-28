import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UiPhone3 extends StatelessWidget {
  const UiPhone3({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: 15),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                "https://img.freepik.com/free-photo/beautiful-strawberry-garden-sunrise-doi-ang-khang-chiang-mai-thailand_335224-761.jpg?size=626&ext=jpg&ga=GA1.2.1255686335.1673619350&semt=sph",
                width: double.infinity,
                height: height / 2,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Text('ABOUT US',
                style: GoogleFonts.courgette(color: Colors.grey, fontSize: 15)),
            const SizedBox(
              height: 10,
            ),
            Text(
              'MOUNTAIN TEA',
              style: GoogleFonts.montserrat(
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 36),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              textAlign: TextAlign.start,
              'THE MOUNTAIN TEA is a supplier of high-quality mountain tea from Indonesia. We focus on sourcing our tea directly from local farmers to ensure the freshest and most authentic taste for tea connoisseurs.\n\nOur company was founded on a passion for the unique and delicious flavors of mountain tea. We work closely with local farmers to bring you the best that the mountain has to offer.',
              style: GoogleFonts.luxuriousRoman(
                  fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
