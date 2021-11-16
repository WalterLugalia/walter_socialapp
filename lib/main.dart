import 'package:flutter/material.dart';
import 'screens/login_screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Walter social App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primaryColor: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}


