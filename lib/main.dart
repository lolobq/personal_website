//My own classes imported
import 'package:personal_website/constants/values.dart' as values;
import 'package:personal_website/screen_util.dart';
import 'package:personal_website/ui/home_page.dart' as homepage;
import 'package:personal_website/ui/about_page.dart' as aboutpage;
import 'package:personal_website/ui/experience_page.dart' as experiencepage;
import 'package:personal_website/ui/projects_page.dart' as projectspage;
import 'package:personal_website/ui/contact_page.dart' as contactpage;

//Material class and html class to allow web development
import 'package:flutter/material.dart';
import 'dart:html' as html;

////////////////////////////////////////////////////////////////////////////////////
//Main App Builder
////////////////////////////////////////////////////////////////////////////////////
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //RETURN
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        canvasColor: values.appBarColor, //Drawer color if its created
        appBarTheme: const AppBarTheme(
          color: values.appBarColor,
        ),
      ),

      //Sets home as a wrapper that contains ScreenUtil
      home: const AppChild(),
    );
  }
}

////////////////////////////////////////////////////////////////////////////////////
//Wrapper that contains ScreenUtil
////////////////////////////////////////////////////////////////////////////////////
class AppChild extends StatefulWidget {
  const AppChild({Key? key}) : super(key: key);

  @override
  _AppChildState createState() => _AppChildState();
}

class _AppChildState extends State<AppChild> {
  @override
  Widget build(BuildContext context) {
    //Initialize ScreenUtil -> this will be used to get screen size and other stuff
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);

    return const homepage.HomePage();
  }
}
