import 'package:flutter/material.dart';
import 'my_bottom_nav_bar.dart';

class BaseLayout extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final int currentIndex;
  final Widget? drawer;

  const BaseLayout({
    Key? key,
    required this.body,
    this.appBar,
    required this.currentIndex,
    this.drawer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      drawer: drawer,
      body: body,
      bottomNavigationBar: MyBottomNavBar(currentIndex: currentIndex),
    );
  }
} 