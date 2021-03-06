////////////////////////////////////////////////////////////////////////////////////
//Footer File:
//
//Contains Footer class
////////////////////////////////////////////////////////////////////////////////////

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/constants/strings.dart';
import 'package:personal_website/constants/text_styles.dart';
import 'package:personal_website/constants/assets.dart';
import 'package:personal_website/constants/values.dart' as values;
import 'dart:html' as html;

////////////////////////////////////////////////////////////////////////////////////
//Footer Class
////////////////////////////////////////////////////////////////////////////////////
class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildFooter(context);
  }

  ////////////////////////////////////////////////////////////////////////////////////
  //Footer Methods
  ////////////////////////////////////////////////////////////////////////////////////
  Widget _buildFooter(BuildContext context) {
    const SocialIcons socialIcons =
        SocialIcons(iconHeight: 30, iconWidth: 75, spaceBetween: 16);

    return Column(
      children: <Widget>[
        const Divider(),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Align(
              child: _buildFooterText(context),
              alignment: Alignment.centerLeft,
            ),
            const Align(
              child: socialIcons,
              alignment: Alignment.centerRight,
            ),
          ],
        ),
        const SizedBox(
          height: 3,
        )
      ],
    );
  }

  Widget _buildFooterText(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Built with lots of ',
            style: GoogleFonts.josefinSans(textStyle: TextStyles.footer),
          ),
          const WidgetSpan(
            child: Icon(
              Icons.coffee,
              size: 12,
            ),
          ),
          TextSpan(
            text: ' and Flutter.',
            style: GoogleFonts.josefinSans(textStyle: TextStyles.footer),
          )
        ],
      ),
    );
  }

  //End of Footer class
}

////////////////////////////////////////////////////////////////////////////////////
//SocialIcons Class
////////////////////////////////////////////////////////////////////////////////////
class SocialIcons extends StatelessWidget {
  final double iconHeight;
  final double iconWidth;
  final double spaceBetween;
  const SocialIcons(
      {required this.iconHeight,
      required this.iconWidth,
      required this.spaceBetween,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildSocialIcons(iconHeight, iconWidth, spaceBetween);
  }

  ////////////////////////////////////////////////////////////////////////////////////
  //SocialIcons Methods
  ////////////////////////////////////////////////////////////////////////////////////
  Widget _buildSocialIcons(double heightIn, double widthIn, double spaceIn) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: () {
            html.window.open(
                "https://www.linkedin.com/in/lauren-bourque/", "LinkedIn");
          },
          child: Image.asset(
            Assets.linkedIn,
            height: heightIn,
            width: heightIn,
          ),
          style: ElevatedButton.styleFrom(
            primary: values.containerBackgroundColor,
          ),
        ),
        SizedBox(width: spaceIn),
        ElevatedButton(
          onPressed: () {
            html.window.open("https://github.com/lolobq", "Github");
          },
          child: Text(
            "GitHub",
            style: GoogleFonts.josefinSans(
                textStyle: TextStyles.homeName.copyWith(
              fontSize: 12,
              color: Colors.black,
            )),
          ),
          style: ElevatedButton.styleFrom(
            primary: values.containerBackgroundColor,
            fixedSize: Size(widthIn, heightIn),
          ),
        ),
      ],
    );
  }

  //End of SocialIcons class
}
