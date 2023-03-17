// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio_app/screens/project_card.dart';
import 'package:rive/rive.dart';

import 'about_page.dart';
import 'home_screen.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
 void _navigateToHome() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  void _navigateToAboutPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AboutPage()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                onTap: _navigateToAboutPage,
                child: SizedBox(
                  height: 36,
                  width: 36,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              InkWell(
                onTap: () {},
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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Projects",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: Colors.black , fontWeight: FontWeight.w600)
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...course.map((course) => Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ProjectCard(course: course),
                  )).toList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Skills",
                style: Theme.of(context)
                       .textTheme
                       .headlineSmall!
                       .copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 12),
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xFF80A4FF),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Text(
                "Languages: Java , Python , Dart , C++ , C , JS",
                style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
              ),
            ),


            SizedBox(height: 20,),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 12),
              height: 70,
              decoration: BoxDecoration(
                color: Color(0xFF80A4FF),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Text(
                "Technologys: Flutter , Figma , Rive , Firebase , Machine learning , Docker , Git , HTML. ",
                style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
              ),
            ),

            SizedBox(height: 20,),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 12),
              height: 70,
              decoration: BoxDecoration(
                color: Color(0xFF80A4FF),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Text(
                "Skill: Data structures and Algorithms , Problem solving , Communication,",
                style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
              ),
            )
          ],
        )
      ),
    );
  }
}







class Course{
  final String title, description, iconSrc;
  final Color bgColor;

  Course({
    required this.title,
    this.description = "Chat_bot is a mobile application developed using Flutter that utilizes the chat-gpt API to enable natural language conversation with users. The app also features an integration with the DALL-E API to generate images based on user inputs",
    this.iconSrc = "assets/icons/code.svg",
    this.bgColor = const Color(0xFF80A4FF),
  });
  
}

List<Course> course = [
  Course(title: "Chat_Bot"),
  Course(
    title: "Smart_Home",
    description: "Smart_Home UI is a mobile application UI built using Flutter that provides users with an intuitive and user-friendly interface for controlling various smart home devices. With its sleek and modern design.",
    iconSrc: "assets/icons/code.svg",
    bgColor: Color.fromARGB(255, 76, 125, 249),
  ),
  Course(
    title: "Payment_App",
    description: "Payment_App UI is a mobile application user interface (UI) developed using Flutter that provides a sleek and modern design for a payment processing app. The UI is simple yet elegant.",
    iconSrc: "assets/icons/code.svg",
    bgColor: Color.fromARGB(255, 124, 104, 196),
  ),
  Course(
    title: "BookRecommender system",
    description: "Book recommender system is a powerful tool built with Python's versatile libraries, as well machine learning techniques, for design a website use python flask. libraries like numpy, panda, sklearn, matpoliyo.lib ext",
    iconSrc: "assets/icons/code.svg",
    bgColor: const Color(0xFF7553F6),
  ),
  Course(
    title: "Car_Prize predictor",
    description: "Car_prize predictor is a web application built using Python's versatile libraries, Python Flask, and machine learning techniques. libraries like numpy, panda, sklearn, matpoliyo.lib ext",
    iconSrc: "assets/icons/code.svg",
    bgColor: Color.fromARGB(255, 92, 48, 248),
  ),
];