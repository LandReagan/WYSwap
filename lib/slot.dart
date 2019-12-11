enum SLOT_TYPE { FIFTEEN, TWENTY }

class Slot {
  final SLOT_TYPE type;
  final int number;
  final staffNumber;
  final staffName;

  DateTime get startDate => null;
  DateTime get endDate => null;

  Slot(this.type, this.number, this.staffNumber, this.staffName);
}