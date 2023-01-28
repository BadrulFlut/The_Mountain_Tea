import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ui4 extends StatefulWidget {
  const Ui4({super.key});

  @override
  State<Ui4> createState() => _Ui4State();
}

class _Ui4State extends State<Ui4> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 140),
      child: Container(
        height: height / 2,
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 30),
              width: width / 3.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'VISION',
                    style: GoogleFonts.dmSerifText(
                        color: Colors.greenAccent,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    '- To become the leading tea sales website in Indonesia and Asia\n- To offer a seamless, safe and comfortable online shopping experience for customers.\n- To provide a wide range of high-quality teas from various regions.\n- To be a socially responsible and environmentally conscious company.',
                    style: GoogleFonts.luxuriousRoman(),
                  )
                ],
              ),
            ),
            const Spacer(),
            Container(
              width: width / 6.1,
              height: height / 3,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(blurRadius: 20, offset: Offset(0, 15))
                  ],
                  image: const DecorationImage(
                      image: NetworkImage(
                        'https://img.freepik.com/free-photo/tea-pickers-working-kerela-india_53876-42847.jpg?w=740&t=st=1673619547~exp=1673620147~hmac=6811de2131607d8d048b23a008499e842310f79499e937b04dc3c632eae37d29',
                      ),
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high),
                  borderRadius: BorderRadius.circular(600)),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.only(bottom: 30),
              width: width / 3.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '- To offer customers a wide range of high-quality teas from various regions.\n- To provide a safe, easy and comfortable online shopping experience for customers.\n- To develop and maintain strong relationships with suppliers to offer competitive prices.\n- To be a socially responsible and environmentally conscious company.\n- To develop efficient and fast delivery systems to ensure the quality of tea received by customers.',
                    style: GoogleFonts.luxuriousRoman(),
                  ),
                  Text(
                    'MISSION',
                    style: GoogleFonts.dmSerifText(
                        color: Colors.greenAccent,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
