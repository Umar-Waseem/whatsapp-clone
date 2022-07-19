import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({Key? key, required this.mobile, required this.web})
      : super(key: key);

  final Widget mobile;
  final Widget web;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          return web;
        }
        return mobile;
      },
    );
  }
}
