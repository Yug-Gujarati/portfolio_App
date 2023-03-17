import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../project_page.dart';
import 'package:url_launcher/url_launcher.dart';


class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.course,
  });

  final Course course;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 24),
      height: 280,
      width: 260,
      decoration: BoxDecoration(
        color: course.bgColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  course.title,                                      //..............................................................
                style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10,bottom: 8),
                  child: Text(
                    course.description,                                 //................................................................
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
              ],
          ),
        ),
          GestureDetector(
            onTap: () {
                launch('https://github.com/Yug-Gujarati?tab=repositories');
            },
            child: SvgPicture.asset(
                'assets/icons/code.svg',
            ),
          ),
        ],
      ),
    );
  }
}
