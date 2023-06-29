import 'package:flutter/material.dart';
import 'wellcome.dart';
import 'register.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Traveller - Find Spot Your Healing',
      home: home(),
      routes: {
        'login': (BuildContext context) {
          return login();
        },
        'register': (BuildContext context) {
          return register();
        },
      },
    );
  }
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wellcome(),
    );
  }
}
