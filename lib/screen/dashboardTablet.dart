import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardTablet extends StatefulWidget {
  const DashboardTablet({super.key});

  @override
  State<DashboardTablet> createState() => _DashboardTabletState();
}

class _DashboardTabletState extends State<DashboardTablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('The Mountain Tea',
            style: GoogleFonts.robotoSlab(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text('HOME',
                      style: GoogleFonts.montserrat(color: Colors.grey))),
              TextButton(
                  onPressed: () {},
                  child: Text('ABOUT',
                      style: GoogleFonts.montserrat(color: Colors.grey))),
              TextButton(
                  onPressed: () {},
                  child: Text('PRODUCT',
                      style: GoogleFonts.montserrat(color: Colors.grey))),
              TextButton(
                  onPressed: () {},
                  child: Text('FEATURE',
                      style: GoogleFonts.montserrat(color: Colors.grey))),
              TextButton(
                  onPressed: () {},
                  child: Text('CONTACT',
                      style: GoogleFonts.montserrat(color: Colors.grey))),
            ],
          ),
        ],
      ),
      body: const Center(
        child: Text('Tampilan Tablet'),
      ),
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
