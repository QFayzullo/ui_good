import 'package:flutter/material.dart';
import 'package:ui_enter/system_enter/system/enter_system.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SystemEnterencePage1(),
    );
  }
}

