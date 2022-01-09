////////////////////////////////////////////////////////////////////////////////////
//AppBar File:
//
//Contains AppBar class
//Contains ActionButton class
//Contains AppDrawer class
////////////////////////////////////////////////////////////////////////////////////

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/responsive.dart';
import 'package:personal_website/constants/text_styles.dart';
import 'package:personal_website/constants/strings.dart';
import 'package:personal_website/change_page.dart';
import 'package:personal_website/constants/pages.dart';
import 'package:personal_website/constants/values.dart' as values;

////////////////////////////////////////////////////////////////////////////////////
//My AppBar Class
////////////////////////////////////////////////////////////////////////////////////
class NewAppBar extends StatelessWidget {
  const NewAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildAppBar(context);
  }

  ////////////////////////////////////////////////////////////////////////////////////
  //AppBar Methods
  ////////////////////////////////////////////////////////////////////////////////////
  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: values.appBarColor,
      elevation: 0.0,
      automaticallyImplyLeading: ResponsiveWidget.isSmallScreen(context)
          ? true
          : false, //Gets rid of the back arrow button on the app bar
      actions: ResponsiveWidget.isSmallScreen(context)
          ? null
          : _buildAppBarActions(context),
      centerTitle: true,
      title: _buildTitle(),
    );
  }

  Widget _buildTitle() {
    return Text(
      Strings.name,
      style: GoogleFonts.josefinSans(
        textStyle: TextStyles.title,
      ),
    );
  }

  List<Widget> _buildAppBarActions(BuildContext context) {
    const ActionButton homeButton = ActionButton(Pages.home);
    const ActionButton aboutButton = ActionButton(Pages.about);
    const ActionButton experienceButton = ActionButton(Pages.resume);
    const ActionButton projectsButton = ActionButton(Pages.projects);
    const ActionButton contactButton = ActionButton(Pages.contact);

    return <Widget>[
      homeButton,
      aboutButton,
      experienceButton,
      projectsButton,
      contactButton,
    ];
  }

  //End of NewAppBar class
}

////////////////////////////////////////////////////////////////////////////////////
//ActionButton Class
////////////////////////////////////////////////////////////////////////////////////
class ActionButton extends StatelessWidget {
  final Pages selectedPage;
  const ActionButton(this.selectedPage, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //determines the text that's displayed on the button
    String displayText = '';
    if (selectedPage == Pages.home) {
      displayText = Strings.home;
    } else if (selectedPage == Pages.about) {
      displayText = Strings.about;
    } else if (selectedPage == Pages.resume) {
      displayText = Strings.resume;
    } else if (selectedPage == Pages.projects) {
      displayText = Strings.projects;
    } else if (selectedPage == Pages.contact) {
      displayText = Strings.contact;
    }

    return MaterialButton(
      child: Text(
        displayText,
        style: GoogleFonts.josefinSans(
            textStyle: TextStyles.appbaritem.copyWith(
          color: Colors.white,
        )),
      ),
      onPressed: () {
        changePage(context, selectedPage);
      },
    );
  }

//End of ActionButton class
}

////////////////////////////////////////////////////////////////////////////////////
//AppDrawer Class
////////////////////////////////////////////////////////////////////////////////////
class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildDrawer(context);
  }

  ////////////////////////////////////////////////////////////////////////////////////
  //Drawer Methods
  ////////////////////////////////////////////////////////////////////////////////////
  Drawer _buildDrawer(BuildContext context) {
    return Drawer(
      child: _buildDrawerActions(context),
    );
  }

  ListView _buildDrawerActions(BuildContext context) {
    const ActionButton homeButton = ActionButton(Pages.home);
    const ActionButton aboutButton = ActionButton(Pages.about);
    const ActionButton experienceButton = ActionButton(Pages.resume);
    const ActionButton projectsButton = ActionButton(Pages.projects);
    const ActionButton contactButton = ActionButton(Pages.contact);

    return ListView(
      padding: const EdgeInsets.all(20),
      children: const <Widget>[
        homeButton,
        aboutButton,
        experienceButton,
        projectsButton,
        contactButton
      ],
    );
  }

  //End of AppDrawer class
}
