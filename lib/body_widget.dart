import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wy_swap/slot.dart';

import 'database.dart';

class BodyWidget extends StatelessWidget {

  final dummyData = <Slot>[
    Slot(SLOT_TYPE.FIFTEEN, 1, 93429, 'Landry Gagne'),
    Slot(SLOT_TYPE.FIFTEEN, 5, 99991, 'Dummy1'),
    Slot(SLOT_TYPE.FIFTEEN, 7, 99992, 'Dummy2'),
    Slot(SLOT_TYPE.FIFTEEN, 5, 99993, 'Dummy3'),
    Slot(SLOT_TYPE.FIFTEEN, 3, 99994, 'Dummy4'),
    Slot(SLOT_TYPE.FIFTEEN, 6, 99994, 'Dummy4'),

    Slot(SLOT_TYPE.TWENTY, 1, 99991, 'Dummy1'),
    Slot(SLOT_TYPE.TWENTY, 3, 99992, 'Dummy2'),
    Slot(SLOT_TYPE.TWENTY, 4, 99993, 'Dummy3'),
    Slot(SLOT_TYPE.TWENTY, 2, 99993, 'Dummy3'),
    Slot(SLOT_TYPE.TWENTY, 2, 99994, 'Dummy4'),
    Slot(SLOT_TYPE.TWENTY, 3, 99995, 'Dummy5'),
  ];

  ListView _generate() {

    Database.test();

    var tiles = <ListTile>[];

    var staffNumbers = <int>[];
    for (Slot slot in dummyData) {
      if (!staffNumbers.contains(slot.staffNumber)) {
        staffNumbers.add(slot.staffNumber);
      }
    }

    for (int staffNumber in staffNumbers) {
      // 1. Add the name and Staff number
      tiles.add(
        ListTile(
          title: Text(staffNumber.toString(), textScaleFactor: 1.5,),
        )
      );
      for (Slot slot in dummyData) {
        if (slot.staffNumber == staffNumber) {
          tiles.add(
            ListTile(
              leading: slot.type == SLOT_TYPE.TWENTY ? TwentySlot() : FifteenSlot(),
              title: Text("#" + slot.number.toString(), textScaleFactor: 1.5,),
            )
          );
        }
      }
    }

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