import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color bgcollor = Colors.white;

  void _randbg() {
    setState(() {
      bgcollor = Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
          .withOpacity(1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: bgcollor),
      home: Scaffold(
        backgroundColor: bgcollor,
        body: Center(
          child: RaisedButton(
            onPressed: _randbg,
            child: Text('Click'),
          ),
        ),
      ),
    );
  }
}
