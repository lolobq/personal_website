////////////////////////////////////////////////////////////////////////////////////
//Strings File:
//
//Contains Strings class -> all strings used in the website
////////////////////////////////////////////////////////////////////////////////////

class Strings {
  Strings._();

  ////////////////////////////////////////////////////////////////////////////////////
  //App Bar Strings
  ////////////////////////////////////////////////////////////////////////////////////
  static const String home = 'Home';
  static const String about = 'About';
  static const String resume = 'Resume';
  static const String projects = 'Projects';
  static const String contact = 'Contact';

  ////////////////////////////////////////////////////////////////////////////////////
  //Home Page Strings
  ////////////////////////////////////////////////////////////////////////////////////
  static const String name = 'Lauren Bourque';
  static const String homeIntroText =
      'Hi there! Welcome to my place on the Internet. '
      'I\'m Lauren, a passionate nerd, fitness junkie, bibliophile, and wanderlust. '
      'I build things and love to showcase them, so take a look around and stay awhile.';

  ////////////////////////////////////////////////////////////////////////////////////
  //About Me Page Strings
  ////////////////////////////////////////////////////////////////////////////////////
  //Intro strings
  static const String aboutMe = 'ABOUT ME';
  static const String currently = 'Currently';
  static const String introParagraph =
      'I\'m a Computer Engineering undergrad student and Research Assistant at UNC Charlotte where '
      'I develop an innovative video analytics app and nerd out with my peers. '
      'I\'m passionate about health optimization and I\'m interested in projects surrounding '
      'health, fitness, nutrition, sustainability, safety, and positive social impact. '
      'I aspire to make the world a better place by using humane technology to improve these fields.';

  //How I Got Here strings
  static const String howIGotHere = 'How\'d I Get Here?';
  static const String bullet = '\u2022';
  static const String firstAbout =
      'I was born and raised in rural Maine where I lived for 18 years.';
  static const String secondAbout =
      'At 3, I taught myself how to read. Thus began my bibliophilia.';
  static const String thirdAbout =
      'At 10, I smacked my first tennis ball. I was horrible.';
  static const String fourthAbout =
      'At 11, I left the country for the first time to visit family in Canada. '
      'I\'ve been a wanderlust ever since.';
  static const String fifthAbout =
      'At 12, I was diagnosed with a back disorder, Kyphosis, '
      'and had to wear a brace throughout middle school and half of high school.';
  static const String sixthAbout =
      'In 8th grade I timidly gave a speech on world hunger and won my school\'s speech competition. '
      'Thanks to this experience, I actually enjoy public speaking.';
  static const String seventhAbout =
      'When I was 15, I made my first website using HTML and CSS. '
      'It was atrocious to say the least.';
  static const String eighthAbout =
      'At 16, I shocked my Harvard-educated orthopedist by improving my spine\'s curve by '
      '5 degrees from lifting weights and wearing my brace: something he\'d never seen before. '
      'This experience taught me the beauty and power of weightlifting.';
  static const String ninthAbout =
      'From 15-17, I played 1st singles for my varsity high school tennis team. '
      'This was my first experience with real competition. I was hooked.';
  static const String tenthAbout =
      'When I was 17, I created my first Java program to print "Hello world". '
      'It was the ultimate gateway drug.';
  static const String eleventhAbout =
      'Junior year of high school I was seeded the 11th best female tennis player in Maine. '
      'I guess I got slightly better than when I first started.';
  static const String twelfthAbout =
      'After graduating in 2020, I took a gap year and worked full-time among brilliant engineers. '
      'I flew a plane, acted as a project manager, and learned how the real world actually works.';
  static const String thirteenthAbout =
      'After living in Maine for 18 years, my wanderlust got the best of me and I began college at UNC Charlotte in 2021.';

  static final List<String> aboutBullets = [
    firstAbout,
    secondAbout,
    thirdAbout,
    fourthAbout,
    fifthAbout,
    sixthAbout,
    seventhAbout,
    eighthAbout,
    ninthAbout,
    tenthAbout,
    eleventhAbout,
    twelfthAbout,
    thirteenthAbout
  ];

  //Interests strings
  static const String iLike = 'I Like: (Click to Explore)';
  static const String weightlifting = 'Weightlifting';
  static const String travel = 'Travel';
  static const String reading = 'Reading';
  static const String tennis = 'Tennis';
  static const String skiing = 'Skiing';
  static const String cars = 'Cars';
  static const String weightliftingLink = '';
  static const String travelLink =
      'https://www.google.com/maps/d/edit?mid=1034hFnXzE9-OUggmtzCZ8wbTfeXZk0_A&usp=sharing';
  static const String readingLink =
      'https://www.goodreads.com/user/show/81429668-lauren';
  static const String tennisLink =
      'https://app.universaltennis.com/profiles/396895?t=1';
  static const String skiingLink =
      'https://www.google.com/maps/d/edit?mid=1CrR_SEYLNIilQh69m2R5Kp_spZfJqxD3&usp=sharing';
  static const String carsHoverText = '';

  static const String weightliftingCaption =
      'Fun fact: I had no clue how to lift weights until I met this guy. '
      'He\'s taught me everything I know.';
  static const String travelCaption =
      'Fun fact: I love to travel, but I am HORRIBLE at geography. '
      'It was my worst subject in school.';
  static const String readingCaption =
      'Fun fact: When I was a baby, my dad would prop me up in his lap with a book and read to me for hours. '
      'I would cry the second he stopped. I was a fairly needy child.';
  static const String tennisCaption =
      'Fun fact: During the winter when I couldn\'t play tennis outside, I would hit a tennis ball in the house. '
      'This wasn\'t my mom\'s favorite idea.';
  static const String skiingCaption =
      'Fun fact: I\'ve only ever skiied in Maine. '
      'I\'m excited to hit the slopes out west.';
  static const String carsCaption =
      'Fun fact: I\'ve had a love of cars since I was little. '
      'Hot wheels were my favorite toys and I had a tote container full of them.';

  ////////////////////////////////////////////////////////////////////////////////////
  //Resume Page Strings
  ////////////////////////////////////////////////////////////////////////////////////
  static const String resumeCaps = 'RESUME';
  static const String resumePDF = 'Resume PDF';
  static const String resumeLink =
      'https://drive.google.com/file/d/1qgtbnpprWk92jbUz-AcCIsWlN6cGSNy_/view?usp=sharing';

  //Headers
  static const String education = 'Education:';
  static const String experience = 'Experience:';
  static const String skills = 'Skills:';
  static const String selectedCourses = 'Selected Courses:';

  //Education strings
  //UNC Charlotte
  static const String uncCharlotte = 'UNC Charlotte';
  static const String charlotteDegree = 'B.S. in Computer Engineering';
  static const String charlotteDates = 'December 2024';
  static const String charlotteLink = 'https://www.charlotte.edu/';
  static const String charlotteBullet1 = 'Minor in Data Science';
  static const String charlotteBullet2 = 'GPA: 3.785/4.0';
  static const String charlotteBullet3 =
      'Clubs & Activities: Engineering Freshman Learning Community, '
      'MAPS (Maximizing Academic and Personal Success), WE Engage! (Women in Engineering Engage), Club Tennis';
  static final List<String> charlotteBullets = [
    charlotteBullet1,
    charlotteBullet2,
    charlotteBullet3
  ];

  //Messalonskee
  static const String messalonskee = 'Messalonskee High School';
  static const String messoDegree = 'High School Diploma';
  static const String messoDates = 'June 2020';
  static const String messoLink = 'https://mhs.rsu18.org/';
  static const String messoBullet1 = 'Rank: 3/181';
  static const String messoBullet2 = 'GPA: 101.4/100';
  static const String messoBullet3 =
      'Clubs & Activities: Varsity Tennis, Varsity Golf, Math Team, Key Club, National Honors Society';
  static final List<String> messoBullets = [
    messoBullet1,
    messoBullet2,
    messoBullet3
  ];

  //Work strings
  //UNCC Research
  static const String researchJobTitle = 'Undergraduate Researcher';
  static const String researchDates = 'Oct. 2021 - Present';
  static const String researchBullet1 =
      'Developing a first-of-its-kind mobile app that provides real-time video analytics '
      'to workers and community members to improve safety';
  static const String researchBullet2 = 'Experience using VS Code and Flutter';
  static const String researchBullet3 =
      'Meeting with fellow researchers and the founder of the TeCSAR lab to implement desired features';
  static final List<String> researchBullets = [
    researchBullet1,
    researchBullet2,
    researchBullet3,
  ];

  //Progress Engineering
  static const String progressEng = 'Progress Engineering, LLC';
  static const String progressJobTitle = 'Technical Intern';
  static const String progressDates = 'Sept. 2020 - July 2021';
  static const String progressLink = 'https://www.progresseng.com/';
  static const String progressBullet1 =
      'Used C# to develop edger, trimmer, and open-face log optimization software for sawmills';
  static const String progressBullet2 =
      'Used FactoryTalk View and Citect to develop Human-Machine Interfaces and SCADA systems'
      ' for various mills';
  static const String progressBullet3 =
      'Acted as project manager on a handful of smaller factory automation projects';
  static const String progressBullet4 =
      'Established connections with factory owners and staff';
  static final List<String> progressBullets = [
    progressBullet1,
    progressBullet2,
    progressBullet3,
    progressBullet4,
  ];

  //Harvard Summer Business Academy
  static const String harvardSummer = 'Harvard Student Agencies';
  static const String harvardJobTitle = 'Summer Business Academy Participant';
  static const String harvardDates = 'July 2019';
  static const String harvardLink = 'https://homeacademies.com/';
  static const String harvardBullet1 =
      'Attended the Summer Business Academy at Harvard University';
  static const String harvardBullet2 =
      'Created a mock startup and pitched it with my peers to entrepreneurs and professors';
  static const String harvardBullet3 =
      'Led the economic research portion of the project';
  static const String harvardBullet4 = 'Won the competition';
  static final List<String> harvardBullets = [
    harvardBullet1,
    harvardBullet2,
    harvardBullet3,
    harvardBullet4,
  ];

  //Skills
  //Languages
  static const String languages = 'Languages: ';
  static const String languagesList =
      'C#, Java, Dart, C++, LaTeX, MATLAB, HTML/CSS, and VBA';

  //Frameworks
  static const String flutter = 'Flutter';
  static const String frameworks = 'Frameworks: ';
  static const String frameworksList = flutter;

  //Tools & Technologies
  static const String visualStudio = 'Visual Studio, ';
  static const String vsCode = 'VS Code, ';
  static const String ftView = 'FactoryTalk View Studio, ';
  static const String citect = 'and Citect SCADA';
  static const String tools = 'Tools & Technologies: ';
  static const String toolsList = visualStudio + vsCode + ftView + citect;

  //Selected Courses
  static const String compUtil = 'ECGR 2103: Computer Utilization in C++';
  static const String compSci = 'ITCS 1213: AP Computer Science';
  static const String webDesign = 'CS 140: Web Design';
  static const String anatomy = 'BIO 213: Anatomy & Physiology I & Lab';
  static const String physics2 = 'PHYS 2102: Physics for Engineers II & Lab';
  static const String calcBC = 'MATH 1242: AP Calculus BC';
  static const String matrices = 'MATH 2164: Matrices and Linear Algebra';
  static const String diffEqs = 'MATH 2171: Differential Equations';
  static const String engPrac =
      'ENGR 1202: Intro to Engineering Practices & Principles II';
  static const String instrumentation =
      'ECGR 2155: Instrumentation & Networks Lab';
  static const String networkTheory1 = 'ECGR 2111: Network Theory I';
  static const String logicSystems = 'ECGR 2181: Logic Systems Design';
  static final List<String> courseList = [
    compUtil,
    compSci,
    webDesign,
    anatomy,
    physics2,
    calcBC,
    matrices,
    diffEqs,
    engPrac,
    instrumentation,
    networkTheory1,
    logicSystems,
  ];

  ////////////////////////////////////////////////////////////////////////////////////
  //Projects Page Strings
  ////////////////////////////////////////////////////////////////////////////////////
  //Personal Website
  static const String personalWebsiteName = 'Personal Website';
  static const String personalWebsiteCaption =
      'My personal website built using Flutter and Github Pages. '
      'Contains a home page, about me section, resume, projects, and contact section.';
  static const String personalWebsiteRepo =
      'https://github.com/lolobq/personal_website';
  static const String personalWebsiteTechStack = 'Flutter, Github Pages';

  ////////////////////////////////////////////////////////////////////////////////////
  //Contact Page Strings
  ////////////////////////////////////////////////////////////////////////////////////
  static const String contactMe = 'Contact Me';
  static const String contactFormLink =
      'https://hqhpiv0pkkw.typeform.com/to/amjWm6TI';
}
