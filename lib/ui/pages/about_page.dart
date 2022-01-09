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
import 'package:personal_website/widgets.dart';

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
          color: values.containerBackgroundColor,
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
                          const SizedBox(height: 10),
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
              const SizedBox(height: 20),
              ResponsiveWidget.isSmallScreen(context)
                  ? Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: _buildSmallInterestsSection(context),
                    )
                  : _buildLargeInterestsSection(context),
              const SizedBox(height: 60),
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
    BulletList aboutBulletList =
        BulletList(strings: Strings.aboutBullets, heightBetweenPoints: 10.0, smallSize: 16.0, largeSize: 20.0,);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildHowIGotHereText(context),
        const SizedBox(height: 20),
        aboutBulletList,
        const SizedBox(height: 20),
      ],
    );
  }

  ////////////////////////////////////////////////////////////////////////////////////
  //Interests Methods
  ////////////////////////////////////////////////////////////////////////////////////
  Widget _buildILikeText(BuildContext context) {
    return Container(
      padding: ResponsiveWidget.isSmallScreen(context)
          ? const EdgeInsets.all(0)
          : const EdgeInsets.only(left: 60),
      child: Text(
        Strings.iLike,
        style: GoogleFonts.josefinSans(
            textStyle: TextStyles.homeName.copyWith(
          fontSize: ResponsiveWidget.isSmallScreen(context) ? 22.0 : 30.0,
        )),
      ),
    );
  }

  List<InterestTile> _createInterestTiles(BuildContext context) {
    //Create interests
    final Interest weightlifting = Interest(Strings.weightlifting,
        Strings.weightliftingCaption, Assets.laurenGym, '');
    final Interest travel = Interest(Strings.travel, Strings.travelCaption,
        Assets.laurenTravel, Strings.travelLink);
    final Interest reading = Interest(Strings.reading, Strings.readingCaption,
        Assets.books, Strings.readingLink);
    final Interest tennis = Interest(Strings.tennis, Strings.tennisCaption,
        Assets.laurenTennis, Strings.tennisLink);
    final Interest skiing = Interest(Strings.skiing, Strings.skiingCaption,
        Assets.laurenSkiing, Strings.skiingLink);
    final Interest cars =
        Interest(Strings.cars, Strings.carsCaption, Assets.laurenCar, '');
    //Create tiles
    final InterestTile weightliftingTile = InterestTile(weightlifting);
    final InterestTile travelTile = InterestTile(travel);
    final InterestTile readingTile = InterestTile(reading);
    final InterestTile tennisTile = InterestTile(tennis);
    final InterestTile skiingTile = InterestTile(skiing);
    final InterestTile carsTile = InterestTile(cars);

    //Create list
    List<InterestTile> interestsList = [
      weightliftingTile,
      travelTile,
      readingTile,
      tennisTile,
      skiingTile,
      carsTile
    ];

    return interestsList;
  }

  Widget _buildLargeInterestsSection(BuildContext context) {
    List<InterestTile> interestTiles = _createInterestTiles(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildILikeText(context),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            interestTiles.elementAt(0),
            interestTiles.elementAt(1),
            interestTiles.elementAt(2),
          ],
        ),
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            interestTiles.elementAt(3),
            interestTiles.elementAt(4),
            interestTiles.elementAt(5),
          ],
        ),
      ],
    );
  }

  Widget _buildSmallInterestsSection(BuildContext context) {
    List<InterestTile> interestTiles = _createInterestTiles(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildILikeText(context),
        const SizedBox(height: 50),
        interestTiles.elementAt(0),
        const SizedBox(height: 50),
        interestTiles.elementAt(1),
        const SizedBox(height: 50),
        interestTiles.elementAt(2),
        const SizedBox(height: 50),
        interestTiles.elementAt(3),
        const SizedBox(height: 50),
        interestTiles.elementAt(4),
        const SizedBox(height: 50),
        interestTiles.elementAt(5),
        const SizedBox(height: 50),
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
