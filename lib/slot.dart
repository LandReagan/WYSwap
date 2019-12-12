import 'package:wy_swap/globals.dart';

class Slot {

  final SLOT_TYPE type;
  final int number;
  final FLEET fleet;
  final RANK rank;

  DateTime get startDate => null;
  DateTime get endDate => null;

  Slot(this.type, this.number, this.fleet, this.rank);
}