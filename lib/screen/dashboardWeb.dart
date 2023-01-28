import 'package:e_commerce/widget/web/ui1.dart';
import 'package:e_commerce/widget/web/ui2.dart';
import 'package:e_commerce/widget/web/ui3.dart';
import 'package:e_commerce/widget/web/ui4.dart';
import 'package:e_commerce/widget/web/ui5.dart';
import 'package:e_commerce/widget/web/ui6.dart';
import 'package:e_commerce/widget/web/ui7.dart';
import 'package:e_commerce/widget/web/ui8.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardWeb extends StatefulWidget {
  const DashboardWeb({super.key});

  @override
  State<DashboardWeb> createState() => _DashboardWebState();
}

class _DashboardWebState extends State<DashboardWeb> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => const DashboardWeb()),
                (route) => false);
          },
          child: Text('The Mountain Tea',
              style: GoogleFonts.robotoSlab(
                  color: Colors.green,
                  fontSize: 30,
                  fontWeight: FontWeight.bold)),
        ),
        elevation: 6,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      scrollController.animateTo(100,
                          duration: Duration(seconds: 2),
                          curve: Curves.easeInOut);
                    },
                    child: Text('HOME',
                        style: GoogleFonts.montserrat(
                            color: Colors.grey, fontWeight: FontWeight.bold))),
                TextButton(
                    onPressed: () {
                      scrollController.animateTo(600,
                          duration: Duration(seconds: 2),
                          curve: Curves.easeInOut);
                    },
                    child: Text('ABOUT',
                        style: GoogleFonts.montserrat(
                            color: Colors.grey, fontWeight: FontWeight.bold))),
                TextButton(
                    onPressed: () {
                      scrollController.animateTo(2000,
                          duration: Duration(seconds: 2),
                          curve: Curves.easeInOut);
                    },
                    child: Text('PRODUCT',
                        style: GoogleFonts.montserrat(
                            color: Colors.grey, fontWeight: FontWeight.bold))),
                TextButton(
                    onPressed: () {
                      scrollController.animateTo(3200,
                          duration: Duration(seconds: 2),
                          curve: Curves.easeInOut);
                    },
                    child: Text('FEATURE',
                        style: GoogleFonts.montserrat(
                            color: Colors.grey, fontWeight: FontWeight.bold))),
                TextButton(
                    onPressed: () {
                      scrollController.animateTo(3900,
                          duration: Duration(seconds: 2),
                          curve: Curves.easeInOut);
                    },
                    child: Text('CONTACT',
                        style: GoogleFonts.montserrat(
                            color: Colors.grey, fontWeight: FontWeight.bold))),
                const SizedBox(
                  width: 20,
                )
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
        child: Column(
          children: [
            Ui1(
              scroll: () {
                scrollController.animateTo(200,
                    duration: Duration(seconds: 1), curve: Curves.easeInOut);
              },
            ),
            const Ui2(),
            const Ui3(),
            const Ui4(),
            const Ui5(),
            const Ui6(),
            const Ui7(),
            const Ui8()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.whatsapp,
          size: 40.0,
        ),
      ),
    );
  }
}
