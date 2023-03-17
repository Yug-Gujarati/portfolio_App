import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:portfolio_app/about_page.dart';
import 'package:portfolio_app/screens/button.dart';
import 'package:rive/rive.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
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
          
          GestureDetector(
                onTap: () {

              },
              child: const Icon(FontAwesome.mail_forward),
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
                        Spacer(),
                        SizedBox(
                          width: constraints.maxWidth * 0.8,
                          child: Column(
                            children: const [
                              Text(
                                "Welcome to my Portfolio",
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Poppins",
                                  height: 1.2,
                                ),
                              ),
                              SizedBox(height: 16),
                              Text(
                                "Hello there , My name is Yug Gujarati. I am an enthusiastic developer from India.",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                      ),
                    ),
                    Spacer(flex: 2),
                    const Text(
                      'Connect with me',
                      style:TextStyle(
                      fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10,),
                    
                    Row(
                    children:[ 
                      SizedBox(width: 105,),
                    GestureDetector(
                        onTap: () {
                          launch("https://www.linkedin.com/in/yug-gujarati-923375207/");
                        },
                        child: AnimatedContainer(
                             duration: Duration(milliseconds: 500),
                             width: 40,
                             height: 40,
                             decoration: BoxDecoration(
                             color: Color.fromARGB(255, 0, 221, 255),
                             borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          FontAwesome.linkedin,
                          size: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    SizedBox(width: 10,),
                    GestureDetector(
                        onTap: () {
                          launch('https://github.com/Yug-Gujarati');
                          },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 500),
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 0, 221, 255),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            FontAwesome.github,
                            size: 25,
                            color: Colors.black,
                          ),
                        ),
                      ),

                    SizedBox(width: 10,),
                    GestureDetector(
                        onTap: () {
                          launch('https://twitter.com/GujaratiYug');
                          },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 500),
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 0, 221, 255),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(
                            FontAwesome.twitter,
                            size: 25,
                            color: Colors.black,
                          ),
                        ),
                    ),
                  ],
                ),
                    const Spacer(flex: 2,),
                    Button(
                      btnAnimationController: _btnAnimationController,
                      press: () {
                        _btnAnimationController.isActive = true;
                        Future.delayed(
                          const Duration(milliseconds: 800),
                          () {
                            showGeneralDialog(
                            context: context, 
                            pageBuilder:(context,_,__) => AboutPage(),
                        );
                            });
                          },
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 24),
                      child: Text(
                          "please start exploring by cliking here"),
                    )
                  ],
                ),
              );
              },
            )
          ),
        ],
      ),
    );
  }
}
 