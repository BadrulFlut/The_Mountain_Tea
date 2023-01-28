import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ui1 extends StatefulWidget {
  final VoidCallback scroll;
  const Ui1({super.key, required this.scroll});

  @override
  State<Ui1> createState() => _Ui1State();
}

class _Ui1State extends State<Ui1> with SingleTickerProviderStateMixin {
  List<String> images = [
    'https://img.freepik.com/free-photo/tea-pickers-working-kerela-india_53876-42847.jpg?w=740&t=st=1673619547~exp=1673620147~hmac=6811de2131607d8d048b23a008499e842310f79499e937b04dc3c632eae37d29',
    'https://img.freepik.com/free-photo/beautiful-strawberry-garden-sunrise-doi-ang-khang-chiang-mai-thailand_335224-761.jpg?size=626&ext=jpg&ga=GA1.2.1255686335.1673619350&semt=sph',
    'https://media.istockphoto.com/id/1144261993/photo/beautiful-tree-plantation.jpg?b=1&s=170667a&w=0&k=20&c=keKewKlggcQ7X_qUcSLIEiRXLpyq_UTeBs7P3FGG-RQ='
  ];

  @override
  void initState() {
    widget.scroll;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height / 1.2,
      width: double.infinity,
      child: Stack(
        children: [
          Image(
            image: const AssetImage('assets/image/teh.png'),
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.srcATop,
            color: const Color.fromARGB(76, 114, 82, 71),
            filterQuality: FilterQuality.high,
            height: height / 1.2,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.only(
                right: width / 8, left: width / 8, top: height / 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Good think with good tea',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.courierPrime(
                            color: Colors.greenAccent, fontSize: 29)),
                    Text('MOUNTAIN TEA',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.bold)),
                    Container(
                      width: width / 3,
                      child: Text(
                          'Experience the unparalleled taste of hand-picked, authentic mountain tea, that brings the serenity of a mountain top to every sip',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 16,
                          )),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          minimumSize: Size(50, 40)),
                      onPressed: () {
                        setState(() {
                          widget.scroll;
                        });
                      },
                      child: const Text("Learn more"),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  width: width / 3,
                  height: height / 2.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('assets/image/peta.png'),
                          fit: BoxFit.cover),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 25,
                            spreadRadius: 2,
                            offset: Offset(10, 20))
                      ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
