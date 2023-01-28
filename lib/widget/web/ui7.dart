import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ui7 extends StatefulWidget {
  const Ui7({super.key});

  @override
  State<Ui7> createState() => _Ui7State();
}

class _Ui7State extends State<Ui7> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: height / 1.1,
          color: Colors.green,
        ),
        Center(
          heightFactor: 2,
          child: Container(
            width: 1000,
            height: 300,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.facebook,
                            size: 24.0,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.whatsapp,
                            size: 24.0,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.mediation,
                            size: 24.0,
                          ),
                        ),
                      ]),
                ),
                const SizedBox(
                  width: 500,
                ),
                Center(
                  child: Text(
                    'THE MOUNTAIN TEA\nINDONESIA',
                    style: GoogleFonts.robotoSlab(
                        color: Colors.green,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ),
        Center(
          heightFactor: 1.2,
          widthFactor: 2.8,
          child: Container(
            width: 350,
            height: 500,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [],
            ),
          ),
        )
      ],
    );
  }
}
