import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // fullscreen
    SystemChrome.setEnabledSystemUIOverlays([]);
    // no rotation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    var divHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: divHeight / 2 * 0.2,
        color: Color.fromARGB(255, 0, 66, 99),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(Icons.list, color: Colors.white)
                    ),
                    Text("ACTIONS",
                    style: TextStyle(fontWeight: FontWeight.w100,color: Colors.white),),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Icon(
                  Icons.list,
                  color: Colors.white,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Icon(
                  Icons.list,
                  color: Colors.white,
                ),
              ),
            ]),
      ),
    );
  }
}
