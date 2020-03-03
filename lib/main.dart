import 'package:flutter/material.dart';
import './src/pages/index.dart';
import 'src/pages/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AR-Addvals',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage(title: 'AR-Addvals'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
        centerTitle: true,
        leading: Image(image: AssetImage("images/logo.png")),
        actions: <Widget>[
          Container(
              child: Image(
                image: AssetImage("images/logo.png"),
              ))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 300.0,
                  child: Text("Bienvenue",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 48,
                      )),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Image(
                    image: AssetImage("images/logo.png"),
                    fit: BoxFit.cover,
                    height: 100.0,
                  ),
                ),
                Container(
                  width: 250.0,
                  child: Text("AR-Addvals",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 48,
                      )),
                ),
              ],
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 300.0,
                  child: Text(
                      "Tu as besoin d'aide ? Clique sur le bouton jaune",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                      )),
                ),
                Padding(padding: EdgeInsets.all(5.0),),
                Container(
                  child: ButtonTheme(
                    minWidth: 1.0,
                    height: 100.0,
                    child: RaisedButton.icon(
                      elevation: 8.0,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (
                            context) => IndexPage()));
                      },
                      icon: Icon(Icons.call),
                      color: Colors.yellow,
                      label: Text("Trouve un collaborateur"),
                    ),
                  ),
                )
              ],),


          ],
        ),
      ),
    );
  }
}

