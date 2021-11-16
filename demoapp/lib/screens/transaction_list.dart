import 'package:demoapp/model/Transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTx;

  TransactionList(this.transactions, this.deleteTx);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: transactions.isEmpty
          ? Column(
              children: <Widget>[
                Text(
                  'No Books Added yet!',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  child: Image.asset(
                    'assets/images/waiting.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  elevation: 5,
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 100,
                          margin: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 15,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).primaryColor,
                              width: 2,
                            ),
                          ),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            '\ID: ${transactions[index].amount.toStringAsFixed(0)}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                transactions[index].title,
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                'Borrow Date: ${DateFormat.yMMMd().format(transactions[index].date)}',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                'Return Date: ${DateFormat.yMMMd().format(transactions[(index)].date.add(const Duration(days: 14)))}',
                                style: TextStyle(
                                  color: Colors.pinkAccent,
                                ),
                              ),
                            ],
                          ),
                        ),
                        //Container(
                          //width: 115 ,
                          Container(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                                  alignment: Alignment.bottomLeft,
                                  icon: Icon(Icons.delete),
                                  color: Theme.of(context).errorColor,
                                  onPressed: () => deleteTx(transactions[index].id),
                      //),
                        ),
                          ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: transactions.length,
            ),
    );
  }
}
