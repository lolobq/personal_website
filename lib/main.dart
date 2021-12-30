import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/constants/values.dart' as values;
import 'package:personal_website/ui/home_page.dart' as homepage;
import 'package:personal_website/ui/about_page.dart' as aboutpage;
import 'package:personal_website/ui/experience_page.dart' as experiencepage;
import 'package:personal_website/ui/projects_page.dart' as projectspage;
import 'package:personal_website/ui/contact_page.dart' as contactpage;

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
      theme: ThemeData(
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(
          color: values.appBarColor,
          ),
      ),

      //Tab Controller
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: PreferredSize(
          preferredSize: const Size.fromHeight(values.tabHeight),
          child: AppBar(
            bottom: const TabBar(
              indicatorColor: values.tabTextColor,
              indicatorWeight: values.tabIndicatorHeight,
              tabs: [
                Tab(text: 'Home'),
                Tab(text: 'About'),
                Tab(text: 'Experience'),
                Tab(text: 'Projects'),
                Tab(text: 'Contact'),
              ],
            ),
          )
          ),
          body: const TabBarView(
            children: [
              homepage.HomePage(),
              aboutpage.AboutPage(),
              experiencepage.ExperiencePage(),
              projectspage.ProjectsPage(),
              contactpage.ContactPage()
            ],
          ),
        ),
      ),
    );
  }
}
