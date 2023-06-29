import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/src/foundation/key.dart';

import 'main.dart';

class register extends StatelessWidget {
  const register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login to Traveller Apps',
      home: Scaffold(
        body: SafeArea(
          child: Text(
            'Ini Register',
            style: TextStyle(
              fontSize: 40,
            ),
          ),
        ),
      ),
    );
  }
}
