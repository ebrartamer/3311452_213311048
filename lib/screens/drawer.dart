import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/navigateToHome.dart';

Widget mainDrawer(BuildContext context) {
  return Drawer(
    backgroundColor: Colors.black,
    child: Container(
      margin: EdgeInsets.all(20),
      child: ListView(
        children: [
          Container(
            width: 100,
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: GestureDetector(
                    onTap: () {
                      navigateToHome(context);
                    },
                    child: SvgPicture.asset(
                      'logo.svg',
                      height: 100,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text("Aroma Cafe",
                    style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.displayMedium,
                      color:Colors.white,
                      fontSize:20,
                      fontWeight: FontWeight.bold 

                    )),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(Icons.home_outlined, color: Colors.white),
            title: Text("HOME", style: TextStyle(color: Colors.white)),
            onTap: () => Navigator.pushNamed(context, "/home"),
          ),
          ListTile(
            leading: Icon(Icons.menu_book, color: Colors.white),
            title: Text("MENU", style: TextStyle(color: Colors.white)),
            onTap: () => Navigator.pushNamed(context, "/menu"),
          ),
          ListTile(
            leading: Icon(Icons.favorite, color: Colors.red),
            title: Text("YOUR CAREER", style: TextStyle(color: Colors.white)),
            onTap: () => Navigator.pushNamed(context, "/yourCareer"),
          ),
          ListTile(
            leading: Icon(Icons.contact_page, color: Colors.white),
            title: Text("ABOUT US", style: TextStyle(color: Colors.white)),
            onTap: () => Navigator.pushNamed(context, "/contact"),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 1,
            decoration: BoxDecoration(color: Colors.grey.shade800),
          ),
          ListTile(
            leading: Icon(Icons.send_and_archive_outlined,
                color: Colors.grey.shade500),
            title: Text("ASK ME", style: TextStyle(color: Colors.white)),
            onTap: () => Navigator.pushNamed(context, "/askMe"),
          ),
          ListTile(
              leading: Icon(Icons.logout_outlined, color: Colors.grey.shade500),
              title: Text("EXIT", style: TextStyle(color: Colors.white)),
               onTap: () => Navigator.pushNamed(context, "/home"),
            ),
          
          
        ],
      ),
    ),
  );
}
