import 'package:flutter/material.dart';
import 'package:mislab1/screens/home.dart';
import 'package:mislab1/screens/details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Clothing Shop',
      theme: ThemeData(primarySwatch: Colors.pink),
      initialRoute: "/",
      routes: {
        "/": (context) => const Home(),
        "/details": (context) => const Details(),
      },
    );
  }
}
