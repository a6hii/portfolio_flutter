import 'package:abhi_flutter_portfolio/top_home_view/top_desktop_view.dart';
import 'package:abhi_flutter_portfolio/top_home_view/top_mobile_view.dart';
import 'package:abhi_flutter_portfolio/top_home_view/top_tab_view.dart';
import 'package:abhi_flutter_portfolio/utils/responsive_view.dart';
import 'package:flutter/material.dart';

class TopHomeView extends StatelessWidget {
  const TopHomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveView(
      mobileView: TopMobileView(),
      tabView: TopTabView(),
      desktopView: TopDesktopView(),
    );
  }
}
