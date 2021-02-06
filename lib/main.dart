import 'package:flutter/material.dart';
import 'package:vectorize/screens/home_page/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vectorize',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
