////////////////////////////////////////////////////////////////////////////////////
//Contact Page File:
//
//
////////////////////////////////////////////////////////////////////////////////////

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/constants/text_styles.dart';
import 'package:personal_website/responsive.dart';
import 'package:personal_website/ui/shared/body.dart';
import 'package:personal_website/ui/shared/appbar.dart';
import 'package:personal_website/constants/assets.dart';
import 'package:personal_website/constants/strings.dart';
import 'package:personal_website/constants/values.dart' as values;
import 'package:personal_website/ui/shared/footer.dart';
import 'dart:html' as html;

////////////////////////////////////////////////////////////////////////////////////
//Contact Page Class
////////////////////////////////////////////////////////////////////////////////////
class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    Widget content = _buildContent(context);
    Body body;

    return Container(
        decoration: _buildBackground(context),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            drawer: ResponsiveWidget.isSmallScreen(context)
                ? _buildDrawer(context)
                : null,
            appBar: _buildAppBar(context),
            body: LayoutBuilder(builder: (context, constraints) {
              body = Body(constraints, content);
              return body;
            })));
  }

  ////////////////////////////////////////////////////////////////////////////////////
  //Contact Page AppBar Methods
  ////////////////////////////////////////////////////////////////////////////////////
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    const NewAppBar newAppBar = NewAppBar();

    return const PreferredSize(
      preferredSize: Size.fromHeight(60.0),
      child: newAppBar,
    );
  }

  AppDrawer _buildDrawer(BuildContext context) {
    const AppDrawer drawer = AppDrawer();
    return drawer;
  }

  ////////////////////////////////////////////////////////////////////////////////////
  //Content Method
  ////////////////////////////////////////////////////////////////////////////////////
  Widget _buildContent(BuildContext context) {
    const SocialIcons socialIcons = SocialIcons(
        iconHeight: 60,
        iconWidth: 60,
        spaceBetween: 20);

    return Container(
      height: 200,
      width: 300,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildContactMeButton(context),
          const SizedBox(height: 15),
          socialIcons,
        ],
      ),
    );
  }

  ////////////////////////////////////////////////////////////////////////////////////
  //Body Methods
  ////////////////////////////////////////////////////////////////////////////////////
  Widget _buildContactMeButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () =>
          {html.window.open(Strings.contactFormLink, Strings.contactMe)},
      child: Text(
        Strings.contactMe,
        style: GoogleFonts.josefinSans(
            textStyle: TextStyles.homeName.copyWith(
          fontSize: ResponsiveWidget.isSmallScreen(context) ? 30.0 : 45.0,
          color: Colors.white,
        )),
      ),
      style: ElevatedButton.styleFrom(
        primary: values.appBarColor,
        padding: const EdgeInsets.all(35),
      ),
    );
  }

  ////////////////////////////////////////////////////////////////////////////////////
  //Background Method
  ////////////////////////////////////////////////////////////////////////////////////
  BoxDecoration _buildBackground(BuildContext context) {
    return const BoxDecoration(
        image: DecorationImage(
      repeat: ImageRepeat.repeat,
      image: AssetImage(Assets.mountains),
      fit: BoxFit.cover,
    ));
  }

  //End of Contact Page State class
}
