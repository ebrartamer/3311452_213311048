import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';

import '../NavigateToShopping.dart';
import '../screens/drawer.dart';
import '../utils/navigateToHome.dart';
import '../utils/navigateToLoginPage.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: mainDrawer(context),
      appBar: AppBar(
        centerTitle: true,
        title: GestureDetector(
          onTap: () {
            navigateToHome(context);
          },
          child: SvgPicture.asset(
            'logo.svg',
            height: 50,
          ),
        ),
        actions: [
          IconButton(onPressed: () {navigateToShopping(context);}, icon: Icon(Icons.shopping_basket)),
          IconButton(
              onPressed: () {
                navigateToLoginPage(context);
              },
              icon: Icon(Icons.person))
        ],
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 600,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border(),
            boxShadow: [
              BoxShadow(
                color: Colors.lightGreen.withOpacity(0.7),
                spreadRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Title(
                  color: Colors.green,
                  child: Text(
                    'ACCOUNT',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Text(
                "Lost your password? Please enter your username or email address. You will receive a link to create a new password via email.",
                style: TextStyle(height: 1.5)),
            Padding(
              padding: EdgeInsets.all(18),
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.mail),
                  hintText: 'Enter your Email:',
                ),
                keyboardType: TextInputType.emailAddress,
                inputFormatters: [
                  FilteringTextInputFormatter.singleLineFormatter
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green)),
                onPressed: () => {},
                child: Text("RESET A PASSWORD"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/login");
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent, //butonun arka plan rengi
                      onSurface: Colors.grey, // butonun çevre rengi
                      elevation: 0, // butonun yükseliğini sıfır yaptık
                    ),
                    child: Text("Back to login",
                        style: TextStyle(fontWeight: FontWeight.w300)),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
