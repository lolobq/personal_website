////////////////////////////////////////////////////////////////////////////////////
//Change Page File:
//
//Contains changePage method which changes pages -> called from Action Button within AppDrawer or AppBar
////////////////////////////////////////////////////////////////////////////////////

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/constants/pages.dart';
import 'package:personal_website/ui/pages/about_page.dart';
import 'package:personal_website/ui/pages/contact_page.dart';
import 'package:personal_website/ui/pages/experience_page.dart';
import 'package:personal_website/ui/pages/home_page.dart';
import 'package:personal_website/ui/pages/projects_page.dart';

changePage(BuildContext context, Pages page) {
  var pageRoute;

  if (page == Pages.home) {
    pageRoute = const HomePage();
  } else if (page == Pages.about) {
    pageRoute = const AboutPage();
  } else if (page == Pages.experience) {
    pageRoute = const ExperiencePage();
  } else if (page == Pages.projects) {
    pageRoute = const ProjectsPage();
  } else {
    pageRoute = const ContactPage();
  }

  Navigator.push(
      context, MaterialPageRoute(builder: (context) => pageRoute));
}
