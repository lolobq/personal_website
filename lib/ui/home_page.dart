//My own classes imported
import 'package:personal_website/constants/values.dart' as values;
import 'package:personal_website/constants/assets.dart';

//Material class to allow web development
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //BUILD
  @override
  Widget build(BuildContext context) {
    //CONSTANTS
    double screenWidth = MediaQuery(data: data, child: child);
    double screenHeight = ScreenUtil().screenHeight;
    double myPictureRadius = ScreenUtil().setWidth(screenHeight * 0.3);
    double myPictureHorPadding = ScreenUtil().setHeight(0.1 * screenHeight);
    double nameTextHorPadding = ScreenUtil().setWidth(screenWidth * 0.2);
    double nameTextVerPadding = ScreenUtil().setHeight(0.1 * screenHeight);
    double nameTextFontSize = ScreenUtil().setSp(100);
    double introTextPadding = ScreenUtil().setWidth(screenWidth * 0.05);
    double introTextFontSize = ScreenUtil().setSp(30);

    //Circle Picture
    final myPicture = Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(
          top: myPictureHorPadding, bottom: myPictureHorPadding),
      child: CircleAvatar(
        radius: myPictureRadius + 3,
        backgroundColor: values.appBarColor,
        child: CircleAvatar(
          radius: myPictureRadius,
          backgroundImage: const AssetImage(Assets.laurenHome),
        ),
      ),
    );

    //Lauren Bourque Text
    final laurenText = Container(
        padding: EdgeInsets.only(
            left: nameTextHorPadding,
            right: nameTextHorPadding,
            bottom: nameTextVerPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: Text(
                'Lauren Bourque',
                style: TextStyle(
                  fontSize: nameTextFontSize,
                  color: values.homeNameTextColor,
                ),
                textScaleFactor: 1.0,
              ),
            )
          ],
        ));

    //Intro Text
    final introText = Container(
        padding: EdgeInsets.symmetric(horizontal: introTextPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
                child: Text(
              'Hi there! Welcome to my place on the Internet. I\'m Lauren, a passionate nerd, fitness junkie, bibliophile, and wanderlust. '
              'I build things and love to showcase them, so take a look around and stay awhile.',
              style: TextStyle(
                fontSize: introTextFontSize,
                color: values.homeBodyTextColor,
              ),
              textAlign: TextAlign.center,
              textScaleFactor: 1.0,
            ))
          ],
        ));

    //RETURN
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                repeat: ImageRepeat.repeat,
                image: AssetImage(Assets.mountains),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              children: [myPicture, laurenText, introText],
            ),
          ),
        ));
  }
}
