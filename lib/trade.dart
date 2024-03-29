import 'package:wy_swap/slot.dart';
import 'package:wy_swap/user.dart';

class Trade {
  final User user;
  final Slot requesting;
  final Slot giving;

  Trade(this.user, this.requesting, this.giving);

  @override
  String toString() {
    return user.toString() +
        '\n    requesting: ' + requesting.toString() +
        '\n    giving:     ' + giving.toString();
  }
}