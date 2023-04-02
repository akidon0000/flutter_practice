import 'package:flutter/material.dart';
import 'screen0.dart';
import 'screen1.dart';
import 'screen2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // 初期画面を'/'とする
      routes: {
        '/': (context) => Screen0(), // Screen0()を'/'とする
        '/first': (context) => Screen1(), // Screen1()を'/first'とする
        '/second': (context) => Screen2(), // Screen2()を'/second'とする
      },
    );
  }
}
