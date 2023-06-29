import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/src/foundation/key.dart';

import 'main.dart';

class Wellcome extends StatefulWidget {
  const Wellcome({Key? key}) : super(key: key);

  @override
  State<Wellcome> createState() => _WellcomeState();
}

class _WellcomeState extends State<Wellcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        backgroundBlendMode: BlendMode.xor,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/halamandepan.jpg',
          ),
          opacity: 0.85,
        ),
      ),
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              const Text(
                'Welcome to Traveller',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 35,
                  fontFamily: 'Roboto',
                  letterSpacing: 0.8,
                ),
                textAlign: TextAlign.left,
              ),
              Container(height: 25),
              const Text(
                'Lorem ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis reiciendis eius nesciunt, provident animi, laudantium.',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 15.8,
                  fontWeight: FontWeight.w100,
                  letterSpacing: 0.4,
                  fontFamily: 'Roboto',
                ),
                textAlign: TextAlign.left,
              ),
              Container(height: 40),
              SizedBox(
                height: 50,
                width: 500,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'register');
                  },
                  child: const Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.blue[500];
                      }
                      return const Color.fromARGB(255, 22, 71, 231);
                    }),
                  ),
                ),
              ),
              Container(height: 25),
              Center(
                child: InkWell(
                  child: const Text(
                    'Already Have Account? Login',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, 'login');
                  },
                ),
              ),
              Container(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
