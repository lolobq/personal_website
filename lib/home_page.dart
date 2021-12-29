import 'package:flutter/material.dart';
import 'package:personal_website/constants.dart' as constants;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //CONSTANTS
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double myPictureRadius = 100;

    //Circle Picture
    final myPicture = Container(
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.only(top: 50, bottom: 70),
      child: Hero(
          tag: 'hero',
          child: CircleAvatar(
            radius: myPictureRadius,
            child: Image.asset('assets/laurenhomepage.png'),
          )),
    );

    //

    //RETURN
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                repeat: ImageRepeat.repeat,
                image: AssetImage('assets/starrynight.jpg'),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              children: [
                myPicture,
              ],
            ),
          ),
        ));
  }
}
