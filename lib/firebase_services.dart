import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  CollectionReference projectBanner1 =
      FirebaseFirestore.instance.collection('trigsyPartner');
  CollectionReference projectBanner2 =
      FirebaseFirestore.instance.collection('trigsyCustomer');
  CollectionReference projectBanner3 =
      FirebaseFirestore.instance.collection('projectBanner1');
  CollectionReference projectBanner4 =
      FirebaseFirestore.instance.collection('projectBanner2');
  // CollectionReference projectBanner5 =
  //     FirebaseFirestore.instance.collection('projectBanner3');
  CollectionReference projectVideo1 =
      FirebaseFirestore.instance.collection('projectVideo1');
}
