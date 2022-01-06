////////////////////////////////////////////////////////////////////////////////////
//Body File:
//
//Contains Body class
//Builds small, medium, or large screen
////////////////////////////////////////////////////////////////////////////////////

import 'package:flutter/material.dart';
import 'package:personal_website/responsive.dart';
import 'package:personal_website/screen_util.dart';
import 'package:personal_website/ui/shared/footer.dart';

////////////////////////////////////////////////////////////////////////////////////
//Body Class
////////////////////////////////////////////////////////////////////////////////////
class Body extends StatelessWidget {
  final BoxConstraints constraints;
  final Widget content;
  const Body(this.constraints, this.content, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildBody(context, constraints, content);
  }

  ////////////////////////////////////////////////////////////////////////////////////
  //Body Methods
  ////////////////////////////////////////////////////////////////////////////////////
  Widget _buildBody(
      BuildContext context, BoxConstraints constraints, Widget content) {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: ResponsiveWidget.isSmallScreen(context)
              ? ScreenUtil.getInstance().setWidth(25)
              : ScreenUtil.getInstance().setWidth(70)),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: constraints.maxWidth,
          minHeight: constraints.maxHeight,
        ),
        child: ResponsiveWidget(
            largeScreen: _buildLargeScreen(context, content),
            mediumScreen: _buildMediumScreen(context, content),
            smallScreen: _buildSmallScreen(context, content)),
      ),
    ));
  }

  ////////////////////////////////////////////////////////////////////////////////////
  //Screens Methods
  ////////////////////////////////////////////////////////////////////////////////////
  Widget _buildLargeScreen(BuildContext context, Widget content) {
    return IntrinsicHeight(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(flex: 1, child: content),
              ],
            ),
          ),
          _buildFooter(context)
        ],
      ),
    );
  }

  Widget _buildMediumScreen(BuildContext context, Widget content) {
    return IntrinsicHeight(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(flex: 1, child: content),
              ],
            ),
          ),
          _buildFooter(context)
        ],
      ),
    );
  }

  Widget _buildSmallScreen(BuildContext context, Widget content) {
    const SocialIcons socialIcons = SocialIcons();

    return IntrinsicHeight(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(flex: 1, child: content),
                const Divider(),
                SizedBox(
                    height:
                        ResponsiveWidget.isSmallScreen(context) ? 12.0 : 0.0),
                socialIcons,
                SizedBox(
                    height:
                        ResponsiveWidget.isSmallScreen(context) ? 12.0 : 0.0),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ////////////////////////////////////////////////////////////////////////////////////
  //Footer Methods
  ////////////////////////////////////////////////////////////////////////////////////
  Widget _buildFooter(BuildContext context) {
    const Footer footer = Footer();
    return footer;
  }

  //End of Body class
}
