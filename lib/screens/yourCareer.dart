import 'package:aroma_coffee/screens/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../NavigateToShopping.dart';
import '../utils/navigateToHome.dart';
import '../utils/navigateToLoginPage.dart';

class YourCareer extends StatefulWidget {
  @override
  State<YourCareer> createState() => _YourCareerState();
}

class _YourCareerState extends State<YourCareer> {
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
      body: ListView(
        children: [
         Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                      width: 500,
                      height: 800,
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
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Text(
                      "YOUR CAREER, YOUR WAY..",
                      style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Image.asset(
                            'images/drive.png',
                            width: 120.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Image.asset(
                            'images/application.png',
                            width: 120.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Image.asset(
                          'images/like.png',
                          width: 120.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Image.asset(
                          'images/career.png',
                          width: 120.0,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Text(
                      "Working with aroma will benefit you:",
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset("money.svg"),
                          Text("Bonuses and allowances!",
                              style: TextStyle(fontSize: 20)),
                          SizedBox(width: 16, height: 30),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset("free.svg"),
                          Text("  2 days off per week;",
                              style: TextStyle(fontSize: 20)),
                          SizedBox(width: 16, height: 30),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset("group.svg"),
                          Text("  Team building;", style: TextStyle(fontSize: 20)),
                          SizedBox(width: 16, height: 30),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset("career.svg"),
                          Text(" Career development opportunities;",
                              style: TextStyle(fontSize: 15)),
                          SizedBox(width: 16, height: 30),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
                ),
          ),
        ),
        ],
      ),
    );
  }
}
