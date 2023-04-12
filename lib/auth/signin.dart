import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../NavigateToShopping.dart';
import '../screens/drawer.dart';
import '../utils/navigateToHome.dart';
import '../utils/navigateToLoginPage.dart';

class signIn extends StatefulWidget {
  const signIn({super.key});

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      drawer: mainDrawer(context),
      body: Center(
          child: Container(
        width: 300,
        height: 600,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border(),
          boxShadow: [
            BoxShadow(
              color: Colors.white12.withOpacity(1),
              spreadRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(38.0),
            child: Column(
              children: [
                Container(
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Icon(Icons.person, color: Colors.green),
                      Icon(Icons.check, color: Colors.green)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'You have successfully logged in.',
                    style:TextStyle(  fontWeight:FontWeight.bold,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/home");
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      onSurface: Colors.grey,
                      elevation: 0,
                    ),
                    child: Text("Back to Home",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
