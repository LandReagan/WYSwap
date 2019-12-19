import 'package:flutter/material.dart';
import 'package:wy_swap/database.dart';


class BodyWidget extends StatelessWidget {

  void testDatabase() async {
    var trades = await Database.fetchAllUsersAndTrades();

    for (var trade in trades) {
      print(trade);
    }
}

  ListView _generate() {

    testDatabase();

    var tiles = <ListTile>[];

    return ListView.builder(
        itemCount: tiles.length,
        itemBuilder: (context, index) {
          return tiles[index];
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return _generate();
  }
}

class TwentySlot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.green,
      ),
      child: Text("22", textScaleFactor: 1.5,),
    );
  }
}

class FifteenSlot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        shape: BoxShape.circle,
      ),
      child: Text("15", textScaleFactor: 1.5,),
    );
  }
}