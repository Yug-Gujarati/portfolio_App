import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:portfolio_app/home_screen.dart';
import 'package:rive/rive.dart';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SlideMenu extends StatefulWidget {
  const SlideMenu({super.key});

  @override
  State<SlideMenu> createState() => _SlideMenuState();
}

class _SlideMenuState extends State<SlideMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: 288,
          height: double.infinity,
          color: Color(0xFF17203A),
          child: SafeArea(
            child: Column(
              children: const [
                Padding(
                  padding: const EdgeInsets.only(left: 24 , top: 32,),

                  child: Text(
                    "BROWSE",
                    style: TextStyle(color: Colors.white70),
                    ),
                ),
                Divider(
                  color: Colors.white24,
                  height: 1,
                ),
                
                ListTile(
                 // onTap: () {const HomeScreen();},
                  leading: Icon(Icons.home, color: Colors.white),
                  title: Text("Home" , style: TextStyle(color: Colors.white),),
                ),

                Divider(
                  color: Colors.white24,
                  height: 1,
                ),
                
                ListTile(
               //   onTap: () {},
                  leading: Icon(Icons.mail, color: Colors.white),
                  title: Text("Mail" , style: TextStyle(color: Colors.white),),
                ),

                Divider(
                  color: Colors.white24,
                  height: 1,
                ),

                ListTile(
                 // onTap: () {},
                  leading: Icon(Icons.info, color: Colors.white),
                  title: Text("Info" , style: TextStyle(color: Colors.white),),
                ),

                Divider(
                  color: Colors.white24,
                  height: 1,
                ),

                ListTile(
                 // onTap: () {},
                  leading: Icon(Icons.build, color: Colors.white),
                  title: Text("Projects" , style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
