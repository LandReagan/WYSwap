import 'package:cloud_firestore/cloud_firestore.dart';

class Database {
  static void test() {
    Firestore.instance.collection('books').document()
  .setData({ 'title': 'title', 'author': 'author' });
  }
}