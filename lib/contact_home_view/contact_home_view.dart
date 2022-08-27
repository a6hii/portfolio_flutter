import 'package:abhi_flutter_portfolio/contact_home_view/contact_desktop_view.dart';
import 'package:abhi_flutter_portfolio/contact_home_view/contact_mobile_view.dart';
import 'package:abhi_flutter_portfolio/contact_home_view/contat_tab_view.dart';
import 'package:abhi_flutter_portfolio/utils/responsive_view.dart';
import 'package:flutter/material.dart';

class ContactHomeView extends StatelessWidget {
  const ContactHomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveView(
      mobileView: ContactMobileView(),
      tabView: ContactTabView(),
      desktopView: ContactDesktopView(),
    );
  }
}
