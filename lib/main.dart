import 'dart:html';

import 'package:flutter/material.dart';
import 'package:personal_website/constants.dart' as constants;
import 'package:personal_website/home_page.dart' as homepage;
import 'package:personal_website/about_page.dart' as aboutpage;
import 'package:personal_website/experience_page.dart' as experiencepage;
import 'package:personal_website/projects_page.dart' as projectspage;
import 'package:personal_website/contact_page.dart' as contactpage;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    //RETURN
    return MaterialApp(
      //Tab Controller
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Home'),
                Tab(text: 'About'),
                Tab(text: 'Experience'),
                Tab(text: 'Projects'),
                Tab(text: 'Contact'),
              ],
            ),
            title: const Text(constants.title),
          ),
          body: const TabBarView(
            children: [
              homepage.HomePage(),
              aboutpage.AboutPage(),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
