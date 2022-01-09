////////////////////////////////////////////////////////////////////////////////////
//Experience Page File:
//
//
////////////////////////////////////////////////////////////////////////////////////

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/constants/strings.dart';
import 'package:personal_website/constants/text_styles.dart';
import 'package:personal_website/constants/values.dart' as values;
import 'package:personal_website/responsive.dart';
import 'package:personal_website/ui/shared/appbar.dart';
import 'package:personal_website/ui/shared/body.dart';
import 'package:personal_website/constants/assets.dart';
import 'package:personal_website/constants/experiences.dart' as experiences;
import 'dart:html' as html;

import 'package:personal_website/widgets.dart';

////////////////////////////////////////////////////////////////////////////////////
//Resume Page Class
////////////////////////////////////////////////////////////////////////////////////
class ResumePage extends StatefulWidget {
  const ResumePage({Key? key}) : super(key: key);

  @override
  _ResumePageState createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
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
          padding: EdgeInsets.symmetric(
              horizontal:
                  ResponsiveWidget.isSmallScreen(context) ? 10.0 : 60.0),
          color: values.containerBackgroundColor,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20),
              _buildResumeText(context),
              const Divider(),
              const SizedBox(height: 10),
              _buildResumeButton(context),
              const SizedBox(height: 45),
              _buildExperienceText(context),
              const SizedBox(height: 10),
              _buildExperienceTiles(context),
              const SizedBox(height: 45),
              _buildEducationText(context),
              const SizedBox(height: 10),
              _buildEducationTiles(context),
              const SizedBox(height: 45),
              _buildSkillsText(context),
              const SizedBox(height: 30),
              _buildSkillsList(context),
              const SizedBox(height: 60),
              _buildSelectedCoursesText(context),
              const SizedBox(height: 20),
              _buildSelectedCoursesSection(context),
              const SizedBox(height: 45),
            ],
          ),
        ));
  }

  ////////////////////////////////////////////////////////////////////////////////////
  //Intro Methods
  ////////////////////////////////////////////////////////////////////////////////////
  Widget _buildResumeText(BuildContext context) {
    return Text(
      Strings.resumeCaps,
      style: GoogleFonts.josefinSans(
          textStyle: TextStyles.homeName.copyWith(
        fontSize: ResponsiveWidget.isSmallScreen(context) ? 20.0 : 30.0,
      )),
    );
  }

  Widget _buildResumeButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () =>
          {html.window.open(Strings.resumeLink, Strings.resumePDF)},
      child: Text(
        Strings.resumePDF,
        style: GoogleFonts.josefinSans(
            textStyle: TextStyles.homeName.copyWith(
          fontSize: ResponsiveWidget.isSmallScreen(context) ? 20.0 : 30.0,
          color: Colors.white,
        )),
      ),
      style: ElevatedButton.styleFrom(
        primary: values.appBarColor,
        padding: const EdgeInsets.all(20),
      ),
    );
  }

  ////////////////////////////////////////////////////////////////////////////////////
  //Education Methods
  ////////////////////////////////////////////////////////////////////////////////////
  Widget _buildEducationText(BuildContext context) {
    return Text(
      Strings.education,
      style: GoogleFonts.josefinSans(
          textStyle: TextStyles.homeName.copyWith(
        fontSize: ResponsiveWidget.isSmallScreen(context) ? 25.0 : 35.0,
      )),
    );
  }

  Widget _buildEducationTiles(BuildContext context) {
    return Column(
      children: [
        experiences.charlotteTile,
        const SizedBox(height: 30),
        experiences.messoTile,
        const SizedBox(height: 30),
      ],
    );
  }

  ////////////////////////////////////////////////////////////////////////////////////
  //Experience Methods
  ////////////////////////////////////////////////////////////////////////////////////
  Widget _buildExperienceText(BuildContext context) {
    return Text(
      Strings.experience,
      style: GoogleFonts.josefinSans(
          textStyle: TextStyles.homeName.copyWith(
        fontSize: ResponsiveWidget.isSmallScreen(context) ? 25.0 : 35.0,
      )),
    );
  }

  Widget _buildExperienceTiles(BuildContext context) {
    return Column(
      children: [
        experiences.charlotteResearchTile,
        const SizedBox(height: 30),
        experiences.progressTile,
        const SizedBox(height: 30),
        experiences.harvardTile,
        const SizedBox(height: 30),
      ],
    );
  }

  ////////////////////////////////////////////////////////////////////////////////////
  //Skills Methods
  ////////////////////////////////////////////////////////////////////////////////////
  Widget _buildSkillsText(BuildContext context) {
    return Text(
      Strings.skills,
      style: GoogleFonts.josefinSans(
          textStyle: TextStyles.homeName.copyWith(
        fontSize: ResponsiveWidget.isSmallScreen(context) ? 25.0 : 35.0,
      )),
    );
  }

  Widget _buildSkillsList(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            textDirection: TextDirection.ltr,
            children: [
              RichText(
                text: TextSpan(
                  text: Strings.languages,
                  style: GoogleFonts.josefinSans(
                      textStyle: TextStyles.homeIntro.copyWith(
                    fontSize:
                        ResponsiveWidget.isSmallScreen(context) ? 20.0 : 30.0,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                  )),
                  children: <InlineSpan>[
                    TextSpan(
                        text: Strings.languagesList,
                        style: GoogleFonts.josefinSans(
                            textStyle: TextStyles.homeIntro.copyWith(
                          fontSize: ResponsiveWidget.isSmallScreen(context)
                              ? 16.0
                              : 25.0,
                        ))),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: Strings.frameworks,
                  style: GoogleFonts.josefinSans(
                      textStyle: TextStyles.homeIntro.copyWith(
                    fontSize:
                        ResponsiveWidget.isSmallScreen(context) ? 20.0 : 30.0,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                  )),
                  children: <InlineSpan>[
                    TextSpan(
                        text: Strings.frameworksList,
                        style: GoogleFonts.josefinSans(
                            textStyle: TextStyles.homeIntro.copyWith(
                          fontSize: ResponsiveWidget.isSmallScreen(context)
                              ? 16.0
                              : 25.0,
                        ))),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  text: Strings.tools,
                  style: GoogleFonts.josefinSans(
                      textStyle: TextStyles.homeIntro.copyWith(
                    fontSize:
                        ResponsiveWidget.isSmallScreen(context) ? 20.0 : 30.0,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                  )),
                  children: <InlineSpan>[
                    TextSpan(
                        text: Strings.toolsList,
                        style: GoogleFonts.josefinSans(
                            textStyle: TextStyles.homeIntro.copyWith(
                          fontSize: ResponsiveWidget.isSmallScreen(context)
                              ? 16.0
                              : 25.0,
                        ))),
                  ],
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ],
    );
  }

  ////////////////////////////////////////////////////////////////////////////////////
  //Selected Courses Methods
  ////////////////////////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////////
  Widget _buildSelectedCoursesText(BuildContext context) {
    return Text(
      Strings.selectedCourses,
      style: GoogleFonts.josefinSans(
          textStyle: TextStyles.homeName.copyWith(
        fontSize: ResponsiveWidget.isSmallScreen(context) ? 25.0 : 35.0,
      )),
    );
  }

  Widget _buildSelectedCourseChip(BuildContext context, String label) {
    return Chip(
        padding: const EdgeInsets.all(10),
        backgroundColor: Colors.white,
        label: Text(
          label,
          style: GoogleFonts.lato(
              textStyle: TextStyles.homeIntro.copyWith(
            fontSize: ResponsiveWidget.isSmallScreen(context) ? 16.0 : 20.0,
          )),
        ));
  }

  Widget _buildSelectedCoursesSection(BuildContext context) {
    final List<Widget> widgets = Strings.courseList
        .map((course) => Padding(
              padding: const EdgeInsets.only(bottom: 10.0, right: 8.0),
              child: _buildSelectedCourseChip(context, course),
            ))
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Wrap(
          children: widgets,
          alignment: WrapAlignment.center,
        )
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

  //End of Experience Page State Class
}
