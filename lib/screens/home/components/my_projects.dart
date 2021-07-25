import 'package:flutter/material.dart';

import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/models/Project.dart';
import 'package:flutter_profile/responsive.dart';

import 'projects_card.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "PROJECTS",
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Responsive(
          mobile: GridViewPorject(crossAxisCount: 1,aspectRatio: 1.7,),
          mobileLarge: GridViewPorject(crossAxisCount:2),
          tablet: GridViewPorject(aspectRatio:1.1),
          desktop: GridViewPorject(),
        )
      ],
    );
  }
}

class GridViewPorject extends StatelessWidget {
  const GridViewPorject({
    Key? key,
    this.crossAxisCount = 3,
    this.aspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double aspectRatio;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: demo_projects.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: aspectRatio,
            mainAxisSpacing: defaultPadding,
            crossAxisSpacing: defaultPadding),
        itemBuilder: (context, index) => ProjectCard(
              project: demo_projects[index],
            ));
  }
}
