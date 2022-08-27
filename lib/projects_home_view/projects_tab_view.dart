import 'package:abhi_flutter_portfolio/projects_home_view/widgets/projects.dart';
import 'package:abhi_flutter_portfolio/projects_home_view/widgets/projects_heading.dart';
import 'package:abhi_flutter_portfolio/utils/config.dart';
import 'package:abhi_flutter_portfolio/utils/open_functions.dart';
import 'package:flutter/material.dart';

class ProjectsTabView extends StatelessWidget {
  const ProjectsTabView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 1000,
        maxHeight: 2400,
      ),
      padding: const EdgeInsets.all(cTabDefaultPadding),
      child: Column(
        children: [
          WorkHeading(context: context, title: 'Some things I built'),
          Project(
            context: context,
            projectName: projectFiesto,
            //imageAssetUrl: fiestoImg,
            projectDetail: fiestoDetails,
            technologies: fiestoTech,
            featuredProjectTitle: flutterProject,
            projectExternalUrl: fiestoUrl,
            isReversed: false,
            isMobile: false,
            bannerImages: [
              Image.asset('assets/1.png'),
              Image.asset('assets/2.png'),
              Image.asset('assets/3.png'),
              Image.asset('assets/4.png')
            ],
          ),
          Project(
            context: context,
            projectName: projectFiesto,
            //imageAssetUrl: fiestoImg,
            projectDetail: fiestoDetails,
            technologies: fiestoTech,
            featuredProjectTitle: flutterProject,
            projectExternalUrl: fiestoUrl,
            isReversed: true,
            isMobile: false,
            bannerImages: [
              Image.asset('assets/1.png'),
              Image.asset('assets/2.png'),
              Image.asset('assets/3.png'),
              Image.asset('assets/4.png')
            ],
          ),
          Project(
            context: context,
            projectName: projectFiesto,
            //imageAssetUrl: fiestoImg,
            projectDetail: fiestoDetails,
            technologies: fiestoTech,
            featuredProjectTitle: flutterProject,
            projectExternalUrl: fiestoUrl,
            isReversed: false,
            isMobile: false,
            bannerImages: [
              Image.asset('assets/1.png'),
              Image.asset('assets/2.png'),
              Image.asset('assets/3.png'),
              Image.asset('assets/4.png')
            ],
          ),
          WorkHeading(
            context: context,
            title: 'Other note-worthy projects',
            titleFlex: 3,
            dividerFlex: 4,
          ),
          Expanded(
            flex: 8,
            child: Container(
              margin: const EdgeInsets.all(20),
              child: ListView(
                  children: additionalProjects(
                context,
              )),
            ),
          )
        ],
      ),
    );
  }
}
