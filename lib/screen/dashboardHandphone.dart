import 'package:e_commerce/widget/phone/ui_phone1.dart';
import 'package:e_commerce/widget/phone/ui_phone2.dart';
import 'package:e_commerce/widget/phone/ui_phone3.dart';
import 'package:e_commerce/widget/phone/ui_phone4.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardHandphone extends StatefulWidget {
  const DashboardHandphone({super.key});

  @override
  State<DashboardHandphone> createState() => _DashboardHandphoneState();
}

class _DashboardHandphoneState extends State<DashboardHandphone> {
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
        title: Text('The Green Store',
            style: GoogleFonts.robotoSlab(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        actions: [
          PopupMenuButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onSelected: (String value) {
                'HOME';
                'ABOUT';
                'PRODUCT';
                'FEATURE';
                'CONTACT';
              },
              itemBuilder: (context) => <PopupMenuEntry<String>>[
                    PopupMenuItem<String>(
                      onTap: () {
                        scrollController.animateTo(200,
                            duration: Duration(seconds: 2),
                            curve: Curves.easeInOut);
                      },
                      value: 'HOME',
                      child: Text('HOME',
                          style: GoogleFonts.montserrat(color: Colors.grey)),
                    ),
                    PopupMenuItem<String>(
                      onTap: () {
                        scrollController.animateTo(600,
                            duration: Duration(seconds: 2),
                            curve: Curves.easeInOut);
                      },
                      value: 'ABOUT',
                      child: Text('ABOUT',
                          style: GoogleFonts.montserrat(color: Colors.grey)),
                    ),
                    PopupMenuItem<String>(
                      onTap: () {},
                      value: 'PRODUCT',
                      child: Text('PRODUCT',
                          style: GoogleFonts.montserrat(color: Colors.grey)),
                    ),
                    PopupMenuItem<String>(
                      onTap: () {},
                      value: 'FEATURE',
                      child: Text('FEATURE',
                          style: GoogleFonts.montserrat(color: Colors.grey)),
                    ),
                    PopupMenuItem<String>(
                      onTap: () {},
                      value: 'CONTACT',
                      child: Text('CONTACT',
                          style: GoogleFonts.montserrat(color: Colors.grey)),
                    ),
                  ])
        ],
      ),
      body: SingleChildScrollView(
          controller: scrollController,
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
          child: Column(
            children: const [UiPhone1(), UiPhone2(), UiPhone3(), UiPhone4()],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.whatsapp,
          size: 24.0,
        ),
      ),
    );
  }
}
