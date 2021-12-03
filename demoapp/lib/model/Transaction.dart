import 'package:flutter/foundation.dart';

class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  Transaction({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
  });

factory Transaction.fromMap(map) {
    return Transaction(
      id: map['id'],
      title: map['title'],
      amount: map['bookID'],
      date: map['date'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'bookID': amount,
      'date': date,
    };
  }
  
}
