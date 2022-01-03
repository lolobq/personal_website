//My own classes imported
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/constants/values.dart' as values;
import 'package:personal_website/constants/assets.dart';
import 'package:personal_website/constants/strings.dart';
import 'package:personal_website/constants/text_styles.dart';

//Material class to allow web development
import 'package:flutter/material.dart';
import 'package:personal_website/responsive.dart';
import 'package:personal_website/screen_util.dart';
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
            appBar: _buildAppBar(context),
            drawer: _buildDrawer(context),
            body: LayoutBuilder(builder: (context, constraints) {
              return _buildBody(context, constraints);
            })));
  }

  ////////////////////////////////////////////////////////////////////////////////////
  //Home Page AppBar Methods
  ////////////////////////////////////////////////////////////////////////////////////
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: values.appBarColor,
      elevation: 0.0,
      actions:
          !ResponsiveWidget.isSmallScreen(context) ? _buildActions() : null,
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

  Drawer? _buildDrawer(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Drawer(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: _buildActions(),
            ),
          )
        : null;
  }

  List<Widget> _buildActions() {
    return <Widget>[
      MaterialButton(
        child: Text(
          Strings.home,
          style: GoogleFonts.josefinSans(
              textStyle: TextStyles.appbaritem.copyWith(
            color: Colors.white,
          )),
        ),
        onPressed: () {},
      ),
      MaterialButton(
        child: Text(
          Strings.about,
          style: GoogleFonts.josefinSans(textStyle: TextStyles.appbaritem),
        ),
        onPressed: () {},
      ),
      MaterialButton(
        child: Text(
          Strings.experience,
          style: GoogleFonts.josefinSans(textStyle: TextStyles.appbaritem),
        ),
        onPressed: () {},
      ),
      MaterialButton(
        child: Text(
          Strings.projects,
          style: GoogleFonts.josefinSans(textStyle: TextStyles.appbaritem),
        ),
        onPressed: () {},
      ),
      MaterialButton(
        child: Text(
          Strings.contact,
          style: GoogleFonts.josefinSans(textStyle: TextStyles.appbaritem),
        ),
        onPressed: () {},
      ),
    ];
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
                _buildSocialIcons(),
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
            Align(
              child: _buildSocialIcons(),
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

  Widget _buildSocialIcons() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            html.window.open(
                "https://www.linkedin.com/in/lauren-bourque/", "LinkedIn");
          },
          child: Image.asset(
            Assets.linkedIn,
            height: 30.0,
            width: 30.0,
          ),
        ),
        const SizedBox(width: 16.0),
        GestureDetector(
          onTap: () {
            html.window.open("https://github.com/lolobq", "Github");
          },
          child: Image.network(
            Assets.github,
            height: 30.0,
            width: 30.0,
          ),
        ),
      ],
    );
  }

  //End of _HomePageState
}
