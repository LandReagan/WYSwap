import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wy_swap/trade.dart';
import 'package:wy_swap/user.dart';
import 'package:wy_swap/globals.dart';

class Database {

  static final CollectionReference usersRef = Firestore.instance.collection('users');

  static Future<List<Trade>> fetchAllUsersAndTrades() async {
    QuerySnapshot userSnapshot = await usersRef.getDocuments();
    userSnapshot.documents.forEach((documentSnapshot) async {
      int staffNumber = int.parse(documentSnapshot.documentID);
      String name = documentSnapshot.data['name'];
      FLEET fleet = getFleetFromString(documentSnapshot.data['fleet']);
      RANK rank = getRankFromString(documentSnapshot.data['rank']);
      User user = User(staffNumber, name, fleet, rank);

      QuerySnapshot tradesSnapshot = await documentSnapshot.reference.collection('trades').getDocuments();
    });
  }
}