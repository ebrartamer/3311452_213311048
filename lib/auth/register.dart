import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';

import '../NavigateToShopping.dart';
import '../screens/drawer.dart';
import '../utils/navigateToHome.dart';
import '../utils/navigateToLoginPage.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
    TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Title(
                    color: Colors.green,
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.person_add),
                    hintText: 'Username:',
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
                    hintText: 'Name:',
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
                    hintText: 'Last Name:',
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
                 controller: _emailController,
                  validator: (value) {
                    if (value!.length > 5 && value.contains("@")) {
                      return null; // hata yok
                    } else {
                      return "Please enter a valid email address!";
                    }
                  },
                  decoration: InputDecoration(
                    icon: Icon(Icons.mail),
                    hintText: 'Enter your Email:',
                    errorText: _emailController.text.isNotEmpty &&
                            !_emailController.text.contains("@")
                        ? "Please enter a valid email address!"
                        : null,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  inputFormatters: [
                    FilteringTextInputFormatter.singleLineFormatter
                  ],
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: TextFormField(
                   validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a password!';
                    } else if (value.length < 6) {
                      return 'Your password must be at least 6 characters.';
                    } else {
                      return null;
                    }
                  },
                  style: TextStyle(color: Colors.black),
                  controller: _passwordController,
                  decoration: InputDecoration(
                    icon: Icon(Icons.password),
                    hintText: 'Enter your Password:',
                    errorText: _passwordController.text.isNotEmpty &&
                            _passwordController.text.length < 6
                        ? "Your password must be at least 6 characters."
                        : null,
                  ),
                  keyboardType: TextInputType.text,
                  inputFormatters: [
                    FilteringTextInputFormatter.singleLineFormatter
                  ],
                   autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green)),
                  onPressed: () => {},
                  child: Text("SEND"),
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
            ],
          ),
        ),
      ),
    );
  }
}
