////////////////////////////////////////////////////////////////////////////////////
//About Page File:
//
//
////////////////////////////////////////////////////////////////////////////////////

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/constants/strings.dart';
import 'package:personal_website/responsive.dart';
import 'package:personal_website/constants/assets.dart';
import 'package:personal_website/ui/shared/appbar.dart';
import 'package:personal_website/ui/shared/body.dart';
import 'package:personal_website/constants/text_styles.dart';
import 'package:personal_website/constants/values.dart' as values;

////////////////////////////////////////////////////////////////////////////////////
//About Page Class
////////////////////////////////////////////////////////////////////////////////////
class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
  //About Page AppBar Methods
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
    return Container(
        padding: const EdgeInsets.only(top: 15),
        child: Container(
          color: Colors.grey.shade200,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20),
              _buildAboutMeText(context),
              const Divider(),
              ResponsiveWidget.isSmallScreen(context)
                  ? Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          _buildIntroPic(context),
                          const SizedBox(height: 30),
                          _buildAboutMeIntro(context),
                        ],
                      ),
                    )
                  : _buildIntroTextAndPic(context),
              const SizedBox(height: 30),
              ResponsiveWidget.isSmallScreen(context)
                  ? Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: _buildCenteredHowIGotHereSection(context),
                    )
                  : _buildHowIGotHereSection(context),
            ],
          ),
        ));
  }

  ////////////////////////////////////////////////////////////////////////////////////
  //Intro Methods
  ////////////////////////////////////////////////////////////////////////////////////

  Widget _buildAboutMeText(BuildContext context) {
    return Text(
      Strings.aboutMe,
      style: GoogleFonts.josefinSans(
          textStyle: TextStyles.homeName.copyWith(
        fontSize: ResponsiveWidget.isSmallScreen(context) ? 20.0 : 30.0,
      )),
    );
  }

  Widget _buildAboutMeIntro(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 30),
        _buildCurrentlyText(context),
        const SizedBox(height: 20),
        _buildIntroParagraph(context)
      ],
    );
  }

  Widget _buildCurrentlyText(BuildContext context) {
    return Text(
      Strings.currently,
      style: GoogleFonts.josefinSans(
          textStyle: TextStyles.homeName.copyWith(
        fontSize: ResponsiveWidget.isSmallScreen(context) ? 22.0 : 30.0,
      )),
    );
  }

  Widget _buildIntroParagraph(BuildContext context) {
    return Text(
      Strings.introParagraph,
      style: GoogleFonts.lato(
          textStyle: TextStyles.aboutMeText.copyWith(
        fontSize: ResponsiveWidget.isSmallScreen(context) ? 16.0 : 20.0,
      )),
    );
  }

  Widget _buildIntroPic(BuildContext context) {
    return CircleAvatar(
      radius: ResponsiveWidget.isSmallScreen(context) ? 123 : 153,
      backgroundColor: values.appBarColor,
      child: CircleAvatar(
        radius: ResponsiveWidget.isSmallScreen(context) ? 120 : 150,
        backgroundImage: const AssetImage(Assets.laurenAbout),
      ),
    );
  }

  Widget _buildIntroTextAndPic(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(width: 60),
        Expanded(
          flex: 1,
          child: _buildAboutMeIntro(context),
        ),
        const SizedBox(width: 20),
        Expanded(
          flex: 1,
          child: _buildIntroPic(context),
        )
      ],
    );
  }

  ////////////////////////////////////////////////////////////////////////////////////
  //How I Got Here Methods
  ////////////////////////////////////////////////////////////////////////////////////

  Widget _buildHowIGotHereText(BuildContext context) {
    return Text(
      Strings.howIGotHere,
      style: GoogleFonts.josefinSans(
          textStyle: TextStyles.homeName.copyWith(
        fontSize: ResponsiveWidget.isSmallScreen(context) ? 22.0 : 30.0,
      )),
    );
  }

  Widget _buildBulletList(BuildContext context, List<String> strings) {
    var widgetList = <Widget>[];
    for (var string in strings) {
      widgetList.add(_buildBulletPoint(context, string));
      widgetList.add(const SizedBox(height: 10));
    }
    return Column(children: widgetList);
  }

  Widget _buildBulletPoint(BuildContext context, String content) {
    return Container(
        padding: EdgeInsets.only(
            right: ResponsiveWidget.isSmallScreen(context) ? 10.0 : 60.0,
            bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //Creates the bullet point
            Column(
              children: [
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  height: 5,
                  width: 5,
                  decoration: const BoxDecoration(
                    color: Colors.black87,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            //Creates space between the beginning of the text and the bullet point
            const SizedBox(width: 5),
            //Formats the text to indent when it goes to the next line
            Expanded(
              child: Text(content,
                  style: GoogleFonts.lato(
                      textStyle: TextStyles.aboutMeText.copyWith(
                    fontSize:
                        ResponsiveWidget.isSmallScreen(context) ? 16.0 : 20.0,
                  ))),
            ),
          ],
        ));
  }

  Widget _buildHowIGotHereSection(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(width: 60),
        Expanded(
          flex: 1,
          child: _buildCenteredHowIGotHereSection(context),
        ),
      ],
    );
  }

  Widget _buildCenteredHowIGotHereSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildHowIGotHereText(context),
        const SizedBox(height: 20),
        _buildBulletList(context, Strings.aboutBullets),
        const SizedBox(height: 20),
      ],
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

  //End of AboutPageState class
}
