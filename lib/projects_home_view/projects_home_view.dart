import 'package:abhi_flutter_portfolio/projects_home_view/projects_desktop_view.dart';
import 'package:abhi_flutter_portfolio/projects_home_view/projects_mobile_view.dart';
import 'package:abhi_flutter_portfolio/projects_home_view/projects_tab_view.dart';
import 'package:abhi_flutter_portfolio/utils/responsive_view.dart';
import 'package:flutter/material.dart';

class ProjectsHomeView extends StatelessWidget {
  const ProjectsHomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveView(
      mobileView: ProjectsMobileView(),
      tabView: ProjectsTabView(),
      desktopView: ProjectsDesktopView(),
    );
  }
}
