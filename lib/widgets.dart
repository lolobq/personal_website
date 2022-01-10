////////////////////////////////////////////////////////////////////////////////////
//Widgets File:
//
//
////////////////////////////////////////////////////////////////////////////////////

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/responsive.dart';
import 'package:personal_website/constants/text_styles.dart';
import 'package:personal_website/constants/values.dart' as values;
import 'dart:html' as html;

import 'constants/assets.dart';

//WIDGETS FOR ABOUT PAGE//

////////////////////////////////////////////////////////////////////////////////////
//Interest Class
////////////////////////////////////////////////////////////////////////////////////
class Interest {
  String interestName;
  String caption;
  String pictureLink;
  String onClickLink;

  Interest(this.interestName, this.caption, this.pictureLink, this.onClickLink);
}

////////////////////////////////////////////////////////////////////////////////////
//Interest Tile Class
////////////////////////////////////////////////////////////////////////////////////

class InterestTile extends StatefulWidget {
  final Interest interest;
  const InterestTile(this.interest, {Key? key}) : super(key: key);

  @override
  _InterestTileState createState() => _InterestTileState();
}

class _InterestTileState extends State<InterestTile> {
  @override
  Widget build(BuildContext context) {
    return _buildInterestTile(context);
  }

  ////////////////////////////////////////////////////////////////////////////////////
  //Interest Tile Methods
  ////////////////////////////////////////////////////////////////////////////////////

  Widget _buildInterestTile(BuildContext context) {
    return OnHover(
      child: Container(
        height: ResponsiveWidget.isSmallScreen(context) ? 425.0 : 500.0,
        width: 400,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: values.appBarColor,
        ),
        child: GestureDetector(
          onTap: () {
            html.window.open(
                widget.interest.onClickLink, widget.interest.interestName);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Text(
                widget.interest.interestName,
                style: GoogleFonts.josefinSans(
                    textStyle: TextStyles.appbaritem.copyWith(
                  fontSize:
                      ResponsiveWidget.isSmallScreen(context) ? 22.0 : 30.0,
                  color: Colors.white,
                )),
              ),
              const SizedBox(height: 15),
              CircleAvatar(
                radius: ResponsiveWidget.isSmallScreen(context) ? 123 : 153,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: ResponsiveWidget.isSmallScreen(context) ? 120 : 150,
                  backgroundImage: AssetImage(widget.interest.pictureLink),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  widget.interest.caption,
                  style: GoogleFonts.lato(
                      textStyle: TextStyles.aboutMeText.copyWith(
                    fontSize: 16.0,
                    color: Colors.white,
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  //End of Interest Tile class
}

////////////////////////////////////////////////////////////////////////////////////
//On Hover Class
//
//
////////////////////////////////////////////////////////////////////////////////////
class OnHover extends StatefulWidget {
  final Widget child;
  const OnHover({required this.child, Key? key}) : super(key: key);

  @override
  _OnHoverState createState() => _OnHoverState();
}

class _OnHoverState extends State<OnHover> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()..scale(1.075);
    final transform = isHovered ? hoveredTransform : Matrix4.identity();

    return MouseRegion(
        cursor: isHovered ? SystemMouseCursors.click : SystemMouseCursors.basic,
        onEnter: (event) => onEntered(true),
        onExit: (event) => onEntered(false),
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            transform: transform,
            child: widget.child));
  }

  void onEntered(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });
}

////////////////////////////////////////////////////////////////////////////////////
//Bullet List Class
////////////////////////////////////////////////////////////////////////////////////
class BulletList extends StatelessWidget {
  final List<String> strings;
  final double heightBetweenPoints;
  final double smallSize;
  final double largeSize;
  const BulletList(
      {required this.strings,
      required this.heightBetweenPoints,
      required this.smallSize,
      required this.largeSize,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildBulletList(
        context, strings, heightBetweenPoints, smallSize, largeSize);
  }

  ////////////////////////////////////////////////////////////////////////////////////
  //Bullet List Methods
  ////////////////////////////////////////////////////////////////////////////////////
  Widget _buildBulletList(BuildContext context, List<String> strings,
      double heightBetweenPoints, double smallFontSize, double largeFontSize) {
    var widgetList = <Widget>[];
    for (var string in strings) {
      widgetList.add(BulletPoint(
        content: string,
        heightBetweenPoints: heightBetweenPoints,
        smallSize: smallFontSize,
        largeSize: largeFontSize,
      ));
      widgetList.add(SizedBox(height: heightBetweenPoints));
    }
    return Column(children: widgetList);
  }

  //End of BulletList class
}

////////////////////////////////////////////////////////////////////////////////////
//Bullet Point Class
////////////////////////////////////////////////////////////////////////////////////
class BulletPoint extends StatelessWidget {
  final String content;
  final double heightBetweenPoints;
  final double smallSize;
  final double largeSize;
  const BulletPoint(
      {required this.content,
      required this.heightBetweenPoints,
      required this.smallSize,
      required this.largeSize,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildBulletPoint(
        context, content, heightBetweenPoints, smallSize, largeSize);
  }

  ////////////////////////////////////////////////////////////////////////////////////
  //Bullet Point Methods
  ////////////////////////////////////////////////////////////////////////////////////
  Widget _buildBulletPoint(BuildContext context, String content,
      double heightBetweenPoints, double smallFontSize, double largeFontSize) {
    return Container(
        padding: EdgeInsets.only(
            right: ResponsiveWidget.isSmallScreen(context) ? 10.0 : 60.0,
            bottom: heightBetweenPoints),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //Creates the bullet point
            Column(
              children: [
                SizedBox(
                    height:
                        ResponsiveWidget.isSmallScreen(context) ? 8.0 : 10.0),
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
                    fontSize: ResponsiveWidget.isSmallScreen(context)
                        ? smallFontSize
                        : largeFontSize,
                  ))),
            ),
          ],
        ));
  }

  //End of BulletPoint class
}

//WIDGETS FOR RESUME PAGE//

////////////////////////////////////////////////////////////////////////////////////
//Experience Class
////////////////////////////////////////////////////////////////////////////////////
class Experience {
  String companyName;
  String pictureLink;
  String websiteLink;
  String positionName;
  String dates;
  List<String> strings;

  Experience(this.companyName, this.pictureLink, this.websiteLink,
      this.positionName, this.dates, this.strings);
}

////////////////////////////////////////////////////////////////////////////////////
//Experience Tile Class
////////////////////////////////////////////////////////////////////////////////////
class ExperienceTile extends StatefulWidget {
  final Experience experience;
  const ExperienceTile({required this.experience, Key? key}) : super(key: key);

  @override
  State<ExperienceTile> createState() => _ExperienceTileState();
}

class _ExperienceTileState extends State<ExperienceTile> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? _buildSmallScreenExperienceTile(context)
        : _buildLargeScreenExperienceTile(context);
  }

  ////////////////////////////////////////////////////////////////////////////////////
  //Experience Tile Methods
  ////////////////////////////////////////////////////////////////////////////////////
  Widget _buildSmallScreenExperienceTile(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: values.experienceBackgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: _buildCompanyPicture(
                      context, widget.experience.pictureLink)),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(flex: 1, child: _buildCompanyInfo(context)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLargeScreenExperienceTile(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: values.experienceBackgroundColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: 30),
          Expanded(
              flex: 1,
              child:
                  _buildCompanyPicture(context, widget.experience.pictureLink)),
          const SizedBox(width: 30),
          Expanded(flex: 1, child: _buildCompanyInfo(context)),
        ],
      ),
    );
  }

  Widget _buildCompanyPicture(BuildContext context, String imageLink) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imageLink,
          height: 200,
        ),
      ],
    );
  }

  Widget _buildCompanyInfo(BuildContext context) {
    final BulletList bulletList = BulletList(
      strings: widget.experience.strings,
      heightBetweenPoints: 3.0,
      smallSize: 14.0,
      largeSize: 16.0,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            html.window.open(
                widget.experience.websiteLink, widget.experience.companyName);
          },
          child: Text(
            widget.experience.companyName,
            style: GoogleFonts.josefinSans(
                decoration: TextDecoration.underline,
                textStyle: TextStyles.homeName.copyWith(
                  fontSize:
                      ResponsiveWidget.isSmallScreen(context) ? 20.0 : 25.0,
                )),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            color: values.containerBackgroundColor,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                widget.experience.positionName,
                style: GoogleFonts.lato(
                    textStyle: TextStyles.homeName.copyWith(
                  fontSize:
                      ResponsiveWidget.isSmallScreen(context) ? 16.0 : 20.0,
                )),
              ),
              Text(
                widget.experience.dates,
                style: GoogleFonts.lato(
                    textStyle: TextStyles.homeName.copyWith(
                  fontSize:
                      ResponsiveWidget.isSmallScreen(context) ? 16.0 : 20.0,
                )),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        bulletList,
      ],
    );
  }
  //End of Experience Tile State class
}

//WIDGETS FOR PROJECTS PAGE//

////////////////////////////////////////////////////////////////////////////////////
//Project Class
////////////////////////////////////////////////////////////////////////////////////
class Project {
  String projectName;
  String caption;
  String pictureLink;
  String githubLink;
  String techStack;

  Project(
    this.projectName,
    this.caption,
    this.pictureLink,
    this.githubLink,
    this.techStack,
  );
}

////////////////////////////////////////////////////////////////////////////////////
//Project Tile Class
////////////////////////////////////////////////////////////////////////////////////
class ProjectTile extends StatefulWidget {
  final Project project;
  const ProjectTile({required this.project, Key? key}) : super(key: key);

  @override
  _ProjectTileState createState() => _ProjectTileState();
}

class _ProjectTileState extends State<ProjectTile> {
  @override
  Widget build(BuildContext context) {
    return _buildProjectTile(context);
  }

  ////////////////////////////////////////////////////////////////////////////////////
  //Project Tile Methods
  ////////////////////////////////////////////////////////////////////////////////////
  Widget _buildProjectTile(BuildContext context) {
    return Container(
      height: ResponsiveWidget.isSmallScreen(context) ? 425.0 : 500.0,
      width: 400,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          Text(
            widget.project.projectName,
            style: GoogleFonts.josefinSans(
                textStyle: TextStyles.appbaritem.copyWith(
              fontSize: ResponsiveWidget.isSmallScreen(context) ? 22.0 : 30.0,
              color: values.appBarColor,
            )),
          ),
          const Divider(),
          const SizedBox(height: 8),
          CircleAvatar(
            radius: ResponsiveWidget.isSmallScreen(context) ? 120 : 150,
            backgroundImage: AssetImage(widget.project.pictureLink),
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              widget.project.caption,
              style: GoogleFonts.lato(
                  textStyle: TextStyles.aboutMeText.copyWith(
                fontSize: 16.0,
                color: Colors.black87,
              )),
            ),
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                widget.project.techStack,
                style: GoogleFonts.lato(
                    textStyle: TextStyles.aboutMeText.copyWith(
                  fontSize: 16.0,
                  color: Colors.black87,
                )),
              ),
              ElevatedButton(
                onPressed: () {
                  html.window.open(widget.project.githubLink, "Github");
                },
                child: Row(
                  children: [
                    Text(
                      "GitHub",
                      style: GoogleFonts.josefinSans(
                          textStyle: TextStyles.homeName.copyWith(
                        fontSize: 12,
                        color: Colors.black,
                      )),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: values.containerBackgroundColor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
