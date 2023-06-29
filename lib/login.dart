import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:hexcolor/hexcolor.dart';
import 'main.dart';

void checkLogin(String email, String password) {
  if (email == 'admin@gmail.com' && password == 'admin') {
    print('Login Sukses');
  } else {
    print('Login Gagal');
  }
}

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login to Traveller Apps',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
        ),
        body: SafeArea(
          child: loginView(),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}

class loginView extends StatefulWidget {
  const loginView({Key? key}) : super(key: key);

  @override
  State<loginView> createState() => _loginViewState();
}

class _loginViewState extends State<loginView> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Login',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(height: 20),
            const Text(
              'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
              style: TextStyle(
                color: Colors.black45,
                fontSize: 18,
              ),
            ),
            Container(height: 50),
            Text(
              'Email ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: HexColor('#5F5F5F'),
              ),
            ),
            Container(height: 10),
            Container(
              padding: EdgeInsets.fromLTRB(14, 5, 14, 5),
              decoration: BoxDecoration(
                color: HexColor('#F3F3F3'),
                borderRadius: BorderRadius.circular(9),
              ),
              child: TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: 'Email Address',
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(height: 30),
            Text(
              'Password ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: HexColor('#5F5F5F'),
              ),
            ),
            Container(height: 10),
            Container(
              padding: EdgeInsets.fromLTRB(14, 5, 14, 5),
              decoration: BoxDecoration(
                color: HexColor('#F3F3F3'),
                borderRadius: BorderRadius.circular(9),
              ),
              child: TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                  hintText: 'Enter Your Password',
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(height: 30),
            Text(
              'Forgot Password? ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: HexColor('#5F5F5F'),
              ),
            ),
            Container(height: 30),
            SizedBox(
              width: 500,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  checkLogin(emailController.text, passwordController.text);
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.resolveWith((states) =>
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Color.fromARGB(255, 27, 50, 255)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
