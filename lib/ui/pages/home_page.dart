////////////////////////////////////////////////////////////////////////////////////
//Home Page File:
//
//
////////////////////////////////////////////////////////////////////////////////////

import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/constants/values.dart' as values;
import 'package:personal_website/constants/assets.dart';
import 'package:personal_website/constants/strings.dart';
import 'package:personal_website/constants/text_styles.dart';
import 'package:personal_website/ui/shared/appbar.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/responsive.dart';
import 'package:personal_website/screen_util.dart';
import 'package:personal_website/ui/shared/footer.dart';
import 'dart:html' as html;

////////////////////////////////////////////////////////////////////////////////////
//Home Page Class
////////////////////////////////////////////////////////////////////////////////////
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: _buildBackground(context),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            drawer: ResponsiveWidget.isSmallScreen(context)
                ? _buildDrawer(context)
                : null,
            appBar: _buildAppBar(context),
            body: LayoutBuilder(builder: (context, constraints) {
              return _buildBody(context, constraints);
            })));
  }

  ////////////////////////////////////////////////////////////////////////////////////
  //Home Page AppBar Methods
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
  //Home Page Screen Methods
  ////////////////////////////////////////////////////////////////////////////////////
  Widget _buildBody(BuildContext context, BoxConstraints constraints) {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: ResponsiveWidget.isSmallScreen(context)
              ? ScreenUtil.getInstance().setWidth(25)
              : ScreenUtil.getInstance().setWidth(108)),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: constraints.maxWidth,
          minHeight: constraints.maxHeight,
        ),
        child: ResponsiveWidget(
            largeScreen: _buildLargeScreen(context),
            mediumScreen: _buildMediumScreen(context),
            smallScreen: _buildSmallScreen(context)),
      ),
    ));
  }

  Widget _buildLargeScreen(BuildContext context) {
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
                Expanded(flex: 1, child: _buildContent(context)),
              ],
            ),
          ),
          _buildFooter(context)
        ],
      ),
    );
  }

  Widget _buildMediumScreen(BuildContext context) {
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
                Expanded(flex: 1, child: _buildContent(context)),
              ],
            ),
          ),
          _buildFooter(context)
        ],
      ),
    );
  }

  Widget _buildSmallScreen(BuildContext context) {
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
                Expanded(flex: 1, child: _buildContent(context)),
                const Divider(),
                _buildNameText(context),
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
  //Home Page Body Methods
  ////////////////////////////////////////////////////////////////////////////////////
  Widget _buildContent(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        _buildMyPicture(context),
        const SizedBox(height: 30.0),
        _buildNameText(context),
        SizedBox(height: ResponsiveWidget.isSmallScreen(context) ? 15.0 : 20.0),
        _buildIntroText(context),
      ],
    );
  }

  Widget _buildMyPicture(BuildContext context) {
    return CircleAvatar(
      radius: ResponsiveWidget.isSmallScreen(context) ? 123 : 153,
      backgroundColor: values.appBarColor,
      child: CircleAvatar(
        radius: ResponsiveWidget.isSmallScreen(context) ? 120 : 150,
        backgroundImage: const AssetImage(Assets.laurenHome),
      ),
    );
  }

  Widget _buildNameText(BuildContext context) {
    return Text(
      Strings.name,
      style: GoogleFonts.josefinSans(
          textStyle: TextStyles.homeName.copyWith(
        fontSize: ResponsiveWidget.isSmallScreen(context) ? 60.0 : 100.0,
      )),
    );
  }

  Widget _buildIntroText(BuildContext context) {
    return Text(
      Strings.homeIntroText,
      style: GoogleFonts.josefinSans(
        textStyle: TextStyles.homeIntro.copyWith(
          fontSize: ResponsiveWidget.isSmallScreen(context) ? 25.0 : 35.0,
        ),
      ),
      textAlign: TextAlign.center,
    );
  }

  BoxDecoration _buildBackground(BuildContext context) {
    return const BoxDecoration(
        image: DecorationImage(
      repeat: ImageRepeat.repeat,
      image: AssetImage(Assets.mountains),
      fit: BoxFit.cover,
    ));
  }

  ////////////////////////////////////////////////////////////////////////////////////
  //Footer Methods
  ////////////////////////////////////////////////////////////////////////////////////
  Widget _buildFooter(BuildContext context) {
    const Footer footer = Footer();
    return footer;
  }

  //End of _HomePageState
}
