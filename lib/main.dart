import 'package:e_commerce/device.dart';
import 'package:e_commerce/screen/dashboardHandphone.dart';
import 'package:e_commerce/screen/dashboardTablet.dart';
import 'package:e_commerce/screen/dashboardWeb.dart';
import 'package:e_commerce/widget/web/ui2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Device(
        smallSize: DashboardHandphone(),
        mediumSize: DashboardTablet(),
        largeSize: DashboardWeb(),
      ),
    );
  }
}
