import 'package:aroma_coffee/screens/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '../NavigateToShopping.dart';
import '../utils/navigateToHome.dart';
import '../utils/navigateToLoginPage.dart';

class AskMe extends StatefulWidget {
  const AskMe({super.key});

  @override
  State<AskMe> createState() => _AskMeState();
}

class _AskMeState extends State<AskMe> {
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
          children: [Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: SvgPicture.asset("questions.svg", height: 200),
                 
                ),
                Padding(
                  padding: EdgeInsets.all(28.0),
                  child: Title(
                      color: Colors.black,
                      child: Text(
                        'ASK ME:',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Enter your first and last name:',
                    ),
                    keyboardType: TextInputType.text,
                    inputFormatters: [
                      FilteringTextInputFormatter.singleLineFormatter
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
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
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.message),
                      hintText: 'Enter your message:',
                    ),
                    keyboardType: TextInputType.multiline,
                    maxLines: 6,
                    minLines: 6,
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
                            MaterialStateProperty.all<Color>(Colors.lightGreen)),
                    onPressed: () => {},
                    child: Text("SEND"),
                  ),
                ),
              ],
            ),
          ),
          ],
        ));
  }
}
