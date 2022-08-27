import 'package:abhi_flutter_portfolio/footer_home_view/footer_desktop_view.dart';
import 'package:abhi_flutter_portfolio/footer_home_view/footer_mobile_view.dart';
import 'package:abhi_flutter_portfolio/footer_home_view/footer_tab_view.dart';
import 'package:abhi_flutter_portfolio/utils/responsive_view.dart';
import 'package:flutter/material.dart';

class FooterHomeView extends StatelessWidget {
  const FooterHomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveView(
      mobileView: FooterMobileView(),
      tabView: FooterTabView(),
      desktopView: FooterDesktopView(),
    );
  }
}
