import 'package:flutter/material.dart';
import 'package:ui_enter/system_enter/password_confirm/password_confirm_1.dart';
import 'package:ui_enter/system_enter/password_confirm/password_confirm_2.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ConfirmPasswordPage2(),
    );
  }
}

