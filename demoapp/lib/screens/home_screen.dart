import 'package:demoapp/model/Transaction.dart';
import 'package:demoapp/screens/about_us.dart';
import 'package:demoapp/screens/contacts.dart';
import 'package:flutter/material.dart';
import 'books_screen.dart';
import 'login_screen.dart';
import 'new_transaction.dart';
import 'transaction_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Menu"),
        centerTitle: true,
        // actions: <Widget>[
        //   IconButton(
        //     onPressed: () {
        //       logout(context);
        //     },
        //     icon: Icon(Icons.logout),
        //   )
        // ],
        actions: <Widget>[
         IconButton(
            onPressed: () {
               Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BooksScreen()),
                      );
            },
            icon:Image.asset('assets/images/OIP.png'),
          )
        ],
      ),
      //drawer: MainDrawer(),
      
      body: Container(
         decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/body.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 270,
                  child: Image.asset("assets/images/owl.png", fit: BoxFit.contain),
                ),
                
                SizedBox(
                  height: 0,
                ),
                SizedBox(
                  height: 15,
                ),
                Column(children: <Widget>[
                  Container(
                    height: 20,
                  ),
                  // SizedBox(
                  //   width: 130,
                  //   child: RaisedButton(
                  //     color: Colors.blueAccent,
                  //     onPressed: () {
                  //       Navigator.push(
                  //         context,
                  //         MaterialPageRoute(builder: (context) => MyHomePage()),
                  //       );
                  //     },
                  //     child: Text(
                  //       'Manage Books',
                  //       style: TextStyle(color: Colors.white),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    width: 250,
                    child: RaisedButton(
                      color: Colors.blueAccent,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BooksScreen()),
                        );
                      },
                      child: Text(
                        'Read Books',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width:250,
                    child: RaisedButton(
                      color: Colors.blueAccent,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AboutUs()),
                        );
                      },
                      child: Text(
                        'About Us',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 250,
                    child: RaisedButton(
                      color: Colors.blueAccent,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ContactUs()),
                        );
                      },
                      child: Text(
                        'Contact',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                  ),
                  SizedBox(
                    width: 250,
                    child: RaisedButton(
                        child: Text(
                          "Logout",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blueGrey,
                        onPressed: () {
                          logout(context);
                        }),
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // the logout function
  Future<void> logout(BuildContext context) async {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}


class MyHomePage extends StatefulWidget {
  // String titleInput;
  // String amountInput;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> _userTransactions = [
    // Transaction(
    //   id: 't1',
    //   title: 'New Shoes',
    //   amount: 69.99,
    //   date: DateTime.now(),
    // ),
    // Transaction(
    //   id: 't2',
    //   title: 'Weekly Groceries',
    //   amount: 16.53,
    //   date: DateTime.now(),
    // ),
  ];

  void _addNewTransaction(
      String txTitle, double txAmount, DateTime chosenDate) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: chosenDate,
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  void _startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          child: NewTransaction(_addNewTransaction),
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }

  void _deleteTransaction(String id) {
    setState(() {
      _userTransactions.removeWhere((tx) => tx.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Manage Books',
            style: TextStyle(fontFamily: 'OpenSans'),
          ),
        ),
        actions: <Widget>[
         IconButton(
            onPressed: () {
               logout(context);
            },
            icon: Icon(Icons.logout),
          )
        ],
      leading: IconButton (
                 icon: Icon(Icons.menu), 
                 onPressed: () { 
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                     );
                 },
            ),
      ),
      //drawer: MainDrawer(),
      //drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
            ),
            /*FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BooksScreen()),
                );
              },
              child: Text("Read Books"),
            ),*/
            Container(
              height: 20,
            ),
            TransactionList(_userTransactions, _deleteTransaction),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _startAddNewTransaction(context),
      ),
    );
  }

    // the logout function
  Future<void> logout(BuildContext context) async {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()));
  }

   // the logout function

  }


