import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wy_swap/slot.dart';
import 'package:wy_swap/trade.dart';
import 'package:wy_swap/user.dart';
import 'package:wy_swap/globals.dart';

class Database {

  static final CollectionReference usersRef = Firestore.instance.collection('users');

  static Future<List<Trade>> fetchAllUsersAndTrades() async {

    var trades = <Trade>[];

    QuerySnapshot userSnapshot = await usersRef.getDocuments();
    userSnapshot.documents.forEach((userDocumentSnapshot) async {
      int staffNumber = int.parse(userDocumentSnapshot.documentID);
      String name = userDocumentSnapshot.data['name'];
      FLEET fleet = getFleetFromString(userDocumentSnapshot.data['fleet']);
      RANK rank = getRankFromString(userDocumentSnapshot.data['rank']);
      User user = User(staffNumber, name, fleet, rank);

      print('TRADES OF USER: ' + name);

      QuerySnapshot tradesSnapshot = await userDocumentSnapshot.reference.collection('trades').getDocuments();
      tradesSnapshot.documents.forEach((tradeDocumentSnapshot) {
        SLOT_TYPE type;
        if (tradeDocumentSnapshot.data['slot_days'] == 15) {
          type = SLOT_TYPE.FIFTEEN;
        } else {
          type = SLOT_TYPE.TWENTY;
        }

        Trade trade = Trade(
          user,
          Slot(type, tradeDocumentSnapshot.data['requesting'], fleet, rank),
          Slot(type, tradeDocumentSnapshot.data['giving'], fleet, rank)
        );

        print('TRADE: ' + trade.toString());

        trades.add(trade);
      });
    });

    return trades;
  }
}