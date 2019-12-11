import 'package:flutter/material.dart';
import 'package:wy_swap/slot.dart';

class BodyWidget extends StatelessWidget {

  final dummyData = <Slot>[
    Slot(SLOT_TYPE.FIFTEEN, 1, 93429, 'Landry Gagne'),
    Slot(SLOT_TYPE.FIFTEEN, 5, 99991, 'Dummy1'),
    Slot(SLOT_TYPE.FIFTEEN, 7, 99992, 'Dummy2'),
    Slot(SLOT_TYPE.FIFTEEN, 5, 99993, 'Dummy3'),
    Slot(SLOT_TYPE.FIFTEEN, 3, 99994, 'Dummy4'),
    Slot(SLOT_TYPE.FIFTEEN, 6, 99994, 'Dummy4'),

    Slot(SLOT_TYPE.TWENTY, 1, 1234, 'Dummy1'),
    Slot(SLOT_TYPE.TWENTY, 3, 1234, 'Dummy2'),
    Slot(SLOT_TYPE.TWENTY, 4, 1234, 'Dummy3'),
    Slot(SLOT_TYPE.TWENTY, 2, 1234, 'Dummy3'),
    Slot(SLOT_TYPE.TWENTY, 2, 1234, 'Dummy4'),
    Slot(SLOT_TYPE.TWENTY, 3, 1234, 'Dummy5'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, index) {
        Slot slot = dummyData[index];
        return ListTile(
          leading: Text(slot.number.toString()),
        );
      }
    );
  }

}