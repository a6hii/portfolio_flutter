import 'package:abhi_flutter_portfolio/education_home_view/edu_desktop_view.dart';
import 'package:abhi_flutter_portfolio/education_home_view/edu_mobile_view.dart';
import 'package:abhi_flutter_portfolio/education_home_view/edu_tab_view.dart';
import 'package:abhi_flutter_portfolio/utils/responsive_view.dart';
import 'package:flutter/material.dart';

class EduHomeView extends StatelessWidget {
  const EduHomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveView(
      mobileView: EduMobileView(),
      tabView: EduTabView(),
      desktopView: EduDesktopView(),
    );
  }
}
