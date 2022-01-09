////////////////////////////////////////////////////////////////////////////////////
//Projects Page File:
//
//
////////////////////////////////////////////////////////////////////////////////////

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_website/constants/assets.dart';
import 'package:personal_website/constants/strings.dart';
import 'package:personal_website/constants/text_styles.dart';
import 'package:personal_website/ui/shared/appbar.dart';
import 'package:personal_website/ui/shared/body.dart';
import 'package:personal_website/constants/values.dart' as values;
import 'package:personal_website/widgets.dart';

import '../../responsive.dart';

////////////////////////////////////////////////////////////////////////////////////
//Projects Page Class
////////////////////////////////////////////////////////////////////////////////////
class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  _ProjectsPageState createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
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
              _buildProjectsText(context),
              const Divider(),
              const SizedBox(height: 30),
              _buildProjectsSection(context),
            ],
          ),
        ));
  }

  ////////////////////////////////////////////////////////////////////////////////////
  //Body Methods
  ////////////////////////////////////////////////////////////////////////////////////  
  Widget _buildProjectsText(BuildContext context) {
    return Text(
      Strings.projects,
      style: GoogleFonts.josefinSans(
          textStyle: TextStyles.homeName.copyWith(
        fontSize: ResponsiveWidget.isSmallScreen(context) ? 20.0 : 30.0,
      )),
    );
  }

  List<ProjectTile> _createProjectTiles(BuildContext context) {
    //Create projects
    final Project personalWebsite = Project(Strings.personalWebsiteName, Strings.personalWebsiteCaption, Assets.website, Strings.personalWebsiteRepo, Strings.personalWebsiteTechStack);

    //Create tiles
    final ProjectTile personalWebTile = ProjectTile(project: personalWebsite);

    //Create list
    List<ProjectTile> projectsList = [
      personalWebTile,
    ];

    return projectsList;
  }

  Widget _buildProjectsSection(BuildContext context) {
    List<ProjectTile> projectTiles = _createProjectTiles(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,

      children: <Widget>[
        projectTiles.elementAt(0),
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


  //End of Projects Page State class
}
