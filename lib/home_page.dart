import 'package:flutter/material.dart';
import 'package:wy_swap/body_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WY Swap'),
        actions: <Widget>[

        ],
      ),
      body: BodyWidget(),
    );
  }

}