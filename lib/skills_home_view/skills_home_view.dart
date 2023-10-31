import 'package:abhi_flutter_portfolio/skills_home_view/skills_desktop_view.dart';
import 'package:abhi_flutter_portfolio/skills_home_view/skills_mobile_view.dart';
import 'package:abhi_flutter_portfolio/skills_home_view/skills_tab_view.dart';
import 'package:abhi_flutter_portfolio/utils/responsive_view.dart';
import 'package:flutter/material.dart';

class SkillsHomeView extends StatelessWidget {
  const SkillsHomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveView(
      mobileView: SkillsMobileView(),
      tabView: SkillsTabView(),
      desktopView: SkillsDesktopView(),
    );
  }
}
