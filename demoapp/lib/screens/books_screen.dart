import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class BooksScreen extends StatefulWidget {
  @override
  State<BooksScreen> createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'E - Reading',
            style: TextStyle(fontFamily: 'OpenSans'),
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Container(
                /*decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/lib.png"),
                    fit: BoxFit.cover,
                  ),
                ),*/
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => mainPage1(),
                          ),
                        );
                      }, // Handle your callback.
                      splashColor: Colors.white.withOpacity(0.5),
                      radius: 200,
                      child: Ink(
                        height: 400,
                        width: 250,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/tom.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Tom Sawyer (2000)",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      height: 40,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => mainPage2(),
                          ),
                        );
                      }, // Handle your callback.
                      splashColor: Colors.white.withOpacity(0.5),
                      radius: 200,
                      child: Ink(
                        height: 400,
                        width: 250,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/oliver.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Oliver Twist (2005)",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      height: 40,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => mainPage3(),
                          ),
                        );
                      }, // Handle your callback.
                      splashColor: Colors.white.withOpacity(0.5),
                      radius: 200,
                      child: Ink(
                        height: 400,
                        width: 250,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/charlot.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Charlottes Web (2006)",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      height: 40,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => mainPage4(),
                          ),
                        );
                      }, // Handle your callback.
                      splashColor: Colors.white.withOpacity(0.5),
                      radius: 200,
                      child: Ink(
                        height: 400,
                        width: 250,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/arundika.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Arundika (2015)",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      height: 40,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => mainPage5(),
                          ),
                        );
                      }, // Handle your callback.
                      splashColor: Colors.white.withOpacity(0.5),
                      radius: 200,
                      child: Ink(
                        height: 400,
                        width: 250,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/shakes.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Macbeth (2015)",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      height: 40,
                    ),
                  ],
                )),
          ),
        ));
  }
}

class mainPage1 extends StatefulWidget {
  @override
  __mainPage1State createState() => __mainPage1State();
}

class __mainPage1State extends State<mainPage1> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E - Reading'),
        centerTitle: true,
      ),
      body: Container(
        child: SfPdfViewer.asset('assets/books/Tom.pdf'),
        key: _pdfViewerKey,
      ),
    );
  }
}

class mainPage2 extends StatefulWidget {
  @override
  __mainPage2State createState() => __mainPage2State();
}

class __mainPage2State extends State<mainPage2> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E - Reading'),
        centerTitle: true,
      ),
      body: Container(
        child: SfPdfViewer.asset('assets/books/Oliver.pdf'),
        key: _pdfViewerKey,
      ),
    );
  }
}

class mainPage3 extends StatefulWidget {
  @override
  __mainPage3State createState() => __mainPage3State();
}

class __mainPage3State extends State<mainPage3> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E - Reading'),
        centerTitle: true,
      ),
      body: Container(
        child: SfPdfViewer.asset('assets/books/Charlottes.pdf'),
        key: _pdfViewerKey,
      ),
    );
  }
}

class mainPage4 extends StatefulWidget {
  @override
  __mainPage4State createState() => __mainPage4State();
}

class __mainPage4State extends State<mainPage4> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E - Reading'),
        centerTitle: true,
      ),
      body: Container(
        child: SfPdfViewer.asset('assets/books/arundhika.pdf'),
        key: _pdfViewerKey,
      ),
    );
  }
}

class mainPage5 extends StatefulWidget {
  @override
  __mainPage5State createState() => __mainPage5State();
}

class __mainPage5State extends State<mainPage5> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E - Reading'),
        centerTitle: true,
      ),
      body: Container(
        child: SfPdfViewer.asset('assets/books/Mabeth.pdf'),
        key: _pdfViewerKey,
      ),
    );
  }
}