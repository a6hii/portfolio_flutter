import 'package:abhi_flutter_portfolio/experience_home_view/experience_desktop_view.dart';
import 'package:abhi_flutter_portfolio/experience_home_view/experience_mobile_view.dart';
import 'package:abhi_flutter_portfolio/experience_home_view/experience_tab_view.dart';
import 'package:abhi_flutter_portfolio/utils/responsive_view.dart';
import 'package:flutter/material.dart';

class ExperienceHomeView extends StatelessWidget {
  const ExperienceHomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveView(
      mobileView: ExperienceMobileView(),
      tabView: ExperienceTabView(),
      desktopView: ExperienceDesktopView(),
    );
  }
}
