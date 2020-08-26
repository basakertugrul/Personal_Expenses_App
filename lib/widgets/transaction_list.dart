import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatefulWidget {
  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransaction = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Weekly Groceries',
        amount: 16.53,
        date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userTransaction.map((tx) {
        return Card(
            child: Row(children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.purple, width: 2)),
            padding: EdgeInsets.all(10),
            child: Text(
              '\$ ${tx.amount}',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.purple),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                tx.title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black),
              ),
              Text(
                DateFormat.yMMMd().format(tx.date),
                style: TextStyle(color: Colors.grey, fontSize: 15),
              )
            ],
          )
        ]));
      }).toList(),
    );
  }
}
