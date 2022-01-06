////////////////////////////////////////////////////////////////////////////////////
//Widgets File:
//
//
////////////////////////////////////////////////////////////////////////////////////

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/responsive.dart';
import 'package:personal_website/constants/text_styles.dart';
import 'package:personal_website/constants/values.dart' as values;
import 'dart:html' as html;

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
        height: 500,
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
  const OnHover({required this.child, Key? key})
      : super(key: key);

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
