import 'package:flutter/material.dart';

class Device extends StatelessWidget {
  final Widget smallSize;
  final Widget mediumSize;
  final Widget largeSize;

  const Device({
    super.key,
    required this.smallSize,
    required this.mediumSize,
    required this.largeSize,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, containers) {
        if (containers.maxWidth <= 500) {
          return smallSize;
        } else if (containers.maxWidth <= 1200) {
          return mediumSize;
        } else {
          return largeSize;
        }
      }),
    );
  }
}
