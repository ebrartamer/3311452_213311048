import 'package:aroma_coffee/screens/drawer.dart';
import 'package:aroma_coffee/utils/navigateToLoginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

import '../NavigateToShopping.dart';
import '../utils/navigateToHome.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isLogin = false;


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
        child: Form(
          key: formKey,
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
                  padding: const EdgeInsets.all(38.0),
                  child: Title(
                      color: Colors.green,
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )),
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
                  padding: const EdgeInsets.all(28.0),
                  child: SocialLoginButton(
                    backgroundColor: Colors.green,
                    height: 30,
                    width: 100,
                    text: 'SignIn',
                    borderRadius: 30,
                    fontSize: 20,
                    textColor: Colors.black,
                    buttonType: SocialLoginButtonType.generalLogin,
                    onPressed: () {
                      _loginFunction(context);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/password");
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent, //butonun arka plan rengi
                          onSurface: Colors.grey, // butonun çevre rengi
                          elevation: 0, // butonun yükseliğini sıfır yaptık
                        ),
                        child: Text("Lost your password?"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/register");
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          onSurface: Colors.grey,
                          elevation: 0,
                        ),
                        child: Text("Register"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
   
   
   
    _loginFunction(BuildContext context) {
    if(formKey.currentState!.validate()){
      isLogin=true;
      return Navigator.pushReplacementNamed(context, "/signin");
    }
  }
}
