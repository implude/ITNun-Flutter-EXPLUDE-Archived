import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: yeah(),
    );
  }
}

class yeah extends StatelessWidget {
  const yeah({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yeah'),
      ),
      body: Center(
        child: Image.asset("logo.png"),
      ),
    );
  }
}
