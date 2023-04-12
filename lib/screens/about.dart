import 'package:aroma_coffee/screens/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../NavigateToShopping.dart';
import '../utils/navigateToHome.dart';
import '../utils/navigateToLoginPage.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
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
                  icon: Icon(Icons.person)),
            ]),
        drawer: mainDrawer(context),
        body: ListView(
          children: [
            Center(
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(

                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Container(
                        
                        height: 1000,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.lightGreen[10],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Title(
                                  color: Colors.black,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "ABOUT US",
                                      style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 1.2,
                                        ),
                                      ),
                                    ),
                                  )),
                              Image.asset(
                                'images/cafe.jpg',
                                width: 300,
                              ),
                              SizedBox(width: 16, height: 30),
                              Title(
                                  color: Colors.black,
                                  child: Text(
                                    "THE PLACE WHERE NATURE MEETS TASTE:",
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1.2,
                                      ),
                                    ),
                                  )),
                                  SizedBox(width: 16, height: 30),
                              Text(
                                "Tasting our sandwiches, salads, cakes and pastries prepared specially for Aroma and packaged in completely hygienic conditions while sipping the best coffee of Italy in our 120 m2 open area decorated with laurel, linden, cherry, jasmine and wisteria trees in the most special place of Cihangir in Istanbul. Don't you want? We also have surprises for those who want to work at Aroma Cafe instead of the office!",
                                style: GoogleFonts.openSans(
                                  textStyle: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                              ),
                              SizedBox(width: 16, height: 30),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height:800,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.lightGreen[10],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            children: [
                              Image.asset('images/coffee.jpg', width: 250),
                              SizedBox(width: 16, height: 30),
                              Title(
                                  color: Colors.black,
                                  child: Text("WHY AROMA?",
                                  style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1.2,
                                      ),
                                    ),),
                                  ),
                                   SizedBox(width: 16, height: 30),
                              Text(
                                "We express the coffee experience with Aroma, the symbol of an unforgettable love. We look forward to giving you this experience.",
                               style: GoogleFonts.openSans(
                                  textStyle: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                              ),
                              SizedBox(width: 16, height: 30),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Title(
                      color: Colors.black,
                      child: Text(
                        'FOLLOW US ON SOCİAL MEDIA:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      )
                      ),
                      SizedBox(width: 16, height: 30),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 203, 125, 198),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset("instagram.svg")),
                          Text("aroma_cafe", style: TextStyle(fontSize: 20)),
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
                        color: Colors.lightBlueAccent,
                      ),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset("twitter.svg")),
                          Text("aromaCafe", style: TextStyle(fontSize: 20)),
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
                        color: Colors.lightBlue,
                      ),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset("like.svg")),
                          Text("aromaCafe23", style: TextStyle(fontSize: 20)),
                          SizedBox(width: 16, height: 30),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
