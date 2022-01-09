////////////////////////////////////////////////////////////////////////////////////
//Experiences File:
//
//Contains Education and Work Experiences created using the Experience class
////////////////////////////////////////////////////////////////////////////////////

import 'package:personal_website/constants/strings.dart';
import 'package:personal_website/widgets.dart';
import 'assets.dart';

////////////////////////////////////////////////////////////////////////////////////
//Education
////////////////////////////////////////////////////////////////////////////////////
//Charlotte
Experience charlotte = Experience(
        Strings.uncCharlotte,
        Assets.uncCharlotte,
        Strings.charlotteLink,
        Strings.charlotteDegree,
        Strings.charlotteDates,
        Strings.charlotteBullets);
ExperienceTile charlotteTile = ExperienceTile(experience: charlotte);

//Messo
Experience messo = Experience(
    Strings.messalonskee,
    Assets.messalonskeeHigh,
    Strings.messoLink,
    Strings.messoDegree,
    Strings.messoDates,
    Strings.messoBullets);
ExperienceTile messoTile = ExperienceTile(experience: messo);

////////////////////////////////////////////////////////////////////////////////////
//Experiences
////////////////////////////////////////////////////////////////////////////////////
//Charlotte Research
Experience charlotteResearch = Experience(
        Strings.uncCharlotte,
        Assets.uncCharlotte,
        Strings.charlotteLink,
        Strings.researchJobTitle,
        Strings.researchDates,
        Strings.researchBullets
);
ExperienceTile charlotteResearchTile = ExperienceTile(experience: charlotteResearch);

//Progress Engineering, LLC
Experience progressEng = Experience(
        Strings.progressEng,
        Assets.progressEngineering,
        Strings.progressLink,
        Strings.progressJobTitle,
        Strings.progressDates,
        Strings.progressBullets
);
ExperienceTile progressTile = ExperienceTile(experience: progressEng);

//Harvard Summer Business Academy
Experience harvardAcademy = Experience(
        Strings.harvardSummer,
        Assets.theAcademies,
        Strings.harvardLink,
        Strings.harvardJobTitle,
        Strings.harvardDates,
        Strings.harvardBullets
);
ExperienceTile harvardTile = ExperienceTile(experience: harvardAcademy);