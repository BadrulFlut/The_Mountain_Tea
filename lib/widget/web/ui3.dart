import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ui3 extends StatefulWidget {
  const Ui3({super.key});

  @override
  State<Ui3> createState() => _Ui3State();
}

class _Ui3State extends State<Ui3> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 220),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: width / 3.5,
              height: height / 1.4,
              decoration: BoxDecoration(
                  color: Colors.black,
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://img.freepik.com/free-photo/beautiful-strawberry-garden-sunrise-doi-ang-khang-chiang-mai-thailand_335224-761.jpg?size=626&ext=jpg&ga=GA1.2.1255686335.1673619350&semt=sph'),
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high),
                  borderRadius: BorderRadius.circular(2),
                  boxShadow: const [
                    BoxShadow(blurRadius: 20, offset: Offset(1, 15))
                  ]),
            ),
            const Spacer(),
            SizedBox(
              width: width / 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text('ABOUT US',
                      style: GoogleFonts.courgette(
                          color: Colors.grey, fontSize: 18)),
                  Container(
                    width: width / 7,
                    height: 2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.greenAccent),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'MOUNTAIN TEA',
                    style: GoogleFonts.montserrat(
                        color: Colors.greenAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'THE MOUNTAIN TEA is a supplier of high-quality mountain tea from Indonesia. We focus on sourcing our tea directly from local farmers to ensure the freshest and most authentic taste for tea connoisseurs.\n\nOur company was founded on a passion for the unique and delicious flavors of mountain tea. We work closely with local farmers to bring you the best that the mountain has to offer.',
                    style: GoogleFonts.luxuriousRoman(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: Colors.greenAccent,
                      ),
                      foregroundColor: Colors.greenAccent,
                    ),
                    onPressed: () {},
                    child: Text(
                      "Our Product",
                      style: GoogleFonts.montserrat(color: Colors.greenAccent),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
