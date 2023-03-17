// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:portfolio_app/home_screen.dart';
import 'package:portfolio_app/project_page.dart';
import 'package:portfolio_app/screens/button.dart';
import 'package:rive/rive.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  void _navigateToHome() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  void _navigateToProject() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProjectPage()),
    );
  }
  late RiveAnimationController _btnAnimationController;

  bool isShowSignInDialog = false;

  @override
  void initState() {
    _btnAnimationController = OneShotAnimation(
      "active",
      autoplay: false,
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[100],
      bottomNavigationBar: SafeArea(
        child: Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.7),
              borderRadius: BorderRadius.all(Radius.circular(24)), 
            ),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: _navigateToHome,
                child: SizedBox(
                  height: 36,
                  width: 36,
                  child: Icon(Icons.home, color: Colors.white),
                ),
              ),
              InkWell(
                onTap: () {},
                child: SizedBox(
                  height: 36,
                  width: 36,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              InkWell(
                onTap: _navigateToProject,
                child: SizedBox(
                  height: 36,
                  width: 36,
                  child: Icon(Icons.work, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            width: MediaQuery.of(context).size.width ,
            left: 100,
            bottom:400,
            child: Image.asset(
              "assets/Backgrounds/Spline.png",
            ),
          ),
          Positioned(
            width: MediaQuery.of(context).size.width ,
            right: 100,
            top:600,
            child: Image.asset(
              "assets/Backgrounds/Spline.png",
            ),
          ),
          
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: const SizedBox(),
            ),
          ),
          const RiveAnimation.asset(
            "assets/RiveAssets/shapes.riv",
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
              child: const SizedBox(),
            ),
          ),
          SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 100),
                      SizedBox(
                        width: constraints.maxWidth * 0.8,
                        child: Column(
                          children: [
                            const Text(
                              "Yug Gujarati",
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Poppins",
                                height: 1.2,
                              ),
                            ),
                            const SizedBox(height: 20,),
                            const Text(
                              "I am",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Poppins",
                                height: 1.2,
                              ),
                            ),
                            AnimatedTextKit(
                              repeatForever: true,
                              animatedTexts: [
                                TyperAnimatedText(
                                  'a Developer',
                                  textStyle:const TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 6, 97, 244),
                                  ),
                                ),
                                TyperAnimatedText(
                                  'a Problem Solver',
                                  textStyle:const TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 6, 97, 244),
                                  ),
                                ),
                                TyperAnimatedText(
                                  'an avid Learner',
                                  textStyle:const TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 6, 97, 244),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Hi there! Welcome to my portfolio page,"
                              "\nI am an enthusiastic developer who enjoys building awesome products and loves to get his hands dirty on learning new tools and technologies. To gather new experiences and to develop new interests I've worked on many projects in different tech-stack..",
                              style: TextStyle(
                                fontSize: 16
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 200,),
                      
                      GestureDetector(
                        onTap: () {
                            launch('https://drive.google.com/file/d/1R37Y233gcvTfsesWAkhW33Li7RxG6BpI/view');
                        },
                        child: Container(
                          height: 30,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 73, 76, 81),
                            borderRadius: BorderRadius.all(Radius.circular(8)) 
                          ),
                          child: Center(
                            child: Text(
                              "Resume",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
       ],
      ),
    );
  }
}
