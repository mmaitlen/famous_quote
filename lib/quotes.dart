import 'package:cloud_firestore/cloud_firestore.dart';

class Quote {
  final String id;
  final String text;
  final String author;
  final String source;
  final String? url;
  final String? date;

  Quote({
    required this.id,
    required this.text,
    required this.author,
    required this.source,
    this.url,
    this.date,
  });

  factory Quote.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    final data = doc.data()!;
    return Quote(
      id: doc.id,
      text: data['text'] ?? '',
      author: data['author'] ?? '',
      source: data['source'] ?? '',
      url: data['url'],
      date: data['date'],
    );
  }
}
