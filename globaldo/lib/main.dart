import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
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
    
    return Scaffold(
      body:Container(
        color:Color.fromARGB(255, 0,66, 99),
      ),
    );
  }
}
