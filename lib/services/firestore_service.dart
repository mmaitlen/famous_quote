import 'package:cloud_firestore/cloud_firestore.dart';
import '../quotes.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<List<Quote>> getQuotes() {
    return _db.collection('quotes').snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => Quote.fromFirestore(doc)).toList());
  }
}