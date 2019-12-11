import 'package:flutter/material.dart';
import 'package:wy_swap/home_page.dart';

class WYSwapApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WY Swap',
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
      home: HomePage(),
    );
  }

}