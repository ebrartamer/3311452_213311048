import 'package:aroma_coffee/utils/navigateToShopping.dart';
import 'package:aroma_coffee/auth/shopping.dart';
import 'package:aroma_coffee/screens/yourCareer.dart';
import 'package:flutter/material.dart';
import 'package:aroma_coffee/screens/drawer.dart';
import 'package:aroma_coffee/screens/menu.dart';
import 'package:aroma_coffee/auth/login.dart';
import 'package:aroma_coffee/auth/password.dart';
import 'package:aroma_coffee/auth/register.dart';
import 'package:aroma_coffee/utils/navigateToLoginPage.dart';
import '/screens/about.dart';
import 'askMe.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../auth/signin.dart';
import '../utils/navigateToHome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'aroma_coffee',
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        initialRoute: "/home",
        routes: {
          "/home": (context) => HomePage(),
          "/menu": (context) => Menu(),
          "/yourCareer": (context) => YourCareer(),
          "/contact": (contxet) => About(),
          "/askMe": (context) => AskMe(),
          "/login": (context) => Login(),
          "/password": (context) => ForgotPassword(),
          "/register": (context) => Register(),
          "/signin":(context) => signIn(),
          "/shopping":(context)=> Shopping(),
        });
  }
}

class HomePage extends StatelessWidget {
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'AROMA CAFE',
                  style: GoogleFonts.lato(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              SizedBox(height: 60.0),
              Center(
                child: Container(
                  width: 200,
                  height: 200,
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
                  child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: SvgPicture.asset('logo.svg')),
                ),
              ),
              SizedBox(height: 60.0),
              Text(
                'Welcome to Aroma Cafe!',
                style: GoogleFonts.alike(
                  textStyle: Theme.of(context).textTheme.displayMedium,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
