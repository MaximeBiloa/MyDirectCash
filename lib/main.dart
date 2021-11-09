import 'package:flutter/material.dart';
import 'package:mydirectcash/screens/account_qr.dart';
import 'package:mydirectcash/screens/home.dart';
import 'package:mydirectcash/screens/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Direct Cash',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomePage(),
    );
  }
}
