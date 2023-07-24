import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _matchinfoCollection = _firestore.collection('matchinfo');

class FirebaseDB{
  static String? userUid;
  static String? todayDate;


  static Stream<QuerySnapshot> readItems() {
  CollectionReference matchItemCollection =
  _matchinfoCollection.doc(userUid).collection('items');

  return matchItemCollection.snapshots();
  }

}

