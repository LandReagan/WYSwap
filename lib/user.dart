import 'package:wy_swap/globals.dart';

class User {
  final int staffNumber;
  final String name;
  final FLEET fleet;
  final RANK rank;

  User(this.staffNumber, this.name, this.fleet, this.rank);

  @override
  String toString() =>
      staffNumber.toString() + ' ' +
      name + ' ' + fleet.toString() + ' ' + rank.toString();
}