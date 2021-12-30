import 'package:flutter/material.dart';
import 'package:personal_website/constants/values.dart' as values;
import 'package:personal_website/constants/assets.dart';

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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    const double myPictureRadius = 150;
    double introTextPadding = screenWidth * 0.05;

    //Circle Picture
    final myPicture = Container(
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.only(top: 50),
      child: const FittedBox(
        child: CircleAvatar(
        radius: myPictureRadius + 3,
        backgroundColor: values.appBarColor,
        child: CircleAvatar(
          radius: myPictureRadius,
          backgroundImage: AssetImage(Assets.laurenHome),
        ),
      ),
      )
    );

    //Lauren Bourque Text
    final laurenText = Container(
        padding:
            const EdgeInsets.only(top: 15, left: 200, right: 200, bottom: 15),
        child: const FittedBox(
          child: Text(
            'Lauren Bourque',
            style: TextStyle(
              fontSize: 100,
              color: values.homeLaurenTextColor,
            ),
          ),
        ));

    //Intro Text
    final introText = Container(
      padding: EdgeInsets.symmetric(horizontal: introTextPadding),
      child: const FittedBox(
        fit: BoxFit.fitWidth,
        child: Flexible(child: Text(
          'Hi there! Welcome to my place on the Internet. I\'m Lauren, a passionate nerd, fitness junkie, \nbibliophile, and wanderlust.'
          ' I build things and love to showcase them, so take a look around and stay awhile.',
          style: TextStyle(
            fontSize: 30,
            color: values.homeBodyTextColor,
          ),
          textAlign: TextAlign.center,
        )
        )
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
