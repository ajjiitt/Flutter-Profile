import 'package:flutter/material.dart';

import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/models/Project.dart';
import 'package:flutter_profile/models/Recommendation.dart';
import 'package:flutter_profile/screens/home/components/my_projects.dart';
import 'package:flutter_profile/screens/home/components/recommdations.dart';
import 'package:flutter_profile/screens/main/main_screen.dart';

import 'components/highlights_info.dart';
import 'components/home_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(children: [
      HomeBanner(),
      HighLightsInfo(),
      MyProjects(),
      Recommendations()
    ]);
  }
}


