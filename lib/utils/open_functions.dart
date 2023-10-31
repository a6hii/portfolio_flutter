import 'package:abhi_flutter_portfolio/projects_home_view/widgets/additional_projects.dart';
import 'package:abhi_flutter_portfolio/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void appsLaunchGivenUrl({required String urlToLaunch}) {
  late String host;
  late String path;
  if (urlToLaunch.contains('/')) {
    host = urlToLaunch.substring(0, urlToLaunch.indexOf('/'));
    path = urlToLaunch.substring(urlToLaunch.indexOf('/'));
  } else {
    host = urlToLaunch;
    path = '/';
  }

  final uriToLaunch = Uri(scheme: 'https', host: host, path: path);
  launchUrl(uriToLaunch, webOnlyWindowName: "_self");
}

// void appsSendEmail({required BuildContext context}) {
//   final l10n = context.l10n;
//   final emailURI = Uri(
//     scheme: l10n.contactEmailScheme,
//     path: l10n.contactUserEmail,
//     query: l10n.contactEmailSubject,
//   );
//   launchUrl(emailURI);
// }
final emailURI = Uri(
  scheme: 'mailto',
  path: 'abhi.code101@gmail.com',
  query: 'subject=Hi! From your portfolio',
);
void appsSendEmail({required BuildContext context}) {
  final emailURI = Uri(
    scheme: 'mailto',
    path: 'abhi.code101@gmail.com',
    query: 'subject=Hi! From your portfolio',
  );
  launchUrl(emailURI);
}

bool isMobileView({required BuildContext context}) {
  return MediaQuery.of(context).size.width <= cTabletMaxWidth;
}

bool isTabView(BuildContext context) =>
    MediaQuery.of(context).size.width < 1000 &&
    MediaQuery.of(context).size.width >= 600;

bool isDesktopView(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1000;

void openURL(String url) => launchUrl(
      Uri.parse(url),
    );

List<Widget> socialWidget() {
  return [
    IconButton(
      onPressed: () => appsLaunchGivenUrl(
        urlToLaunch: 'www.github.com/a6hii',
      ),
      icon: _socialIcon(icon: FontAwesomeIcons.github),
    ),
    IconButton(
      onPressed: () => launchUrl(emailURI),
      icon: _socialIcon(icon: FontAwesomeIcons.envelope),
    ),
    IconButton(
      onPressed: () => appsLaunchGivenUrl(
        urlToLaunch: 'www.twitter.com/a6hhii',
      ),
      icon: _socialIcon(icon: FontAwesomeIcons.twitter),
    ),
    IconButton(
      onPressed: () => appsLaunchGivenUrl(
        urlToLaunch: 'www.instagram.com/a6hhii/',
      ),
      icon: _socialIcon(icon: FontAwesomeIcons.instagram),
    ),
    IconButton(
      onPressed: () => appsLaunchGivenUrl(
        urlToLaunch: 'www.linkedin.com/in/abhishek-kumar-394299150/',
      ),
      icon: _socialIcon(icon: FontAwesomeIcons.linkedin),
    ),
  ];
}

FaIcon _socialIcon({required IconData icon}) {
  return FaIcon(
    icon,
    color: Colors.white,
  );
}

List<Widget> additionalProjects(
  BuildContext context,
) {
  return <Widget>[
    AdditionalProject(
      context: context,
      projectIcon: Icons.flutter_dash,
      projectUrl: 'www.github.com/a6hii/mynotes',
      projectName: 'Notes App',
      projectDetail:
          'A Flutter-based notes app for iOS and Android. That can create, store, list, delete and update notes. Uses Firebase Authentication for login/signup, and stores notes in Firestore. Can also save the notes locally on device using SqfLite Db.',
      technologies: 'Flutter, BLoC, SqfLite, Firebase, Google sign in..',
    ),
    AdditionalProject(
      context: context,
      projectIcon: Icons.storefront,
      projectUrl: 'www.github.com/a6hii/multi_vendor_shop_app',
      projectName: 'Multi Vendor Online Store',
      projectDetail:
          'Online store created using Flutter. Uses "setState" for managing states. Has 2 different associated apps for Store Owners and App Admins.',
      technologies: 'Flutter, Firebase, setState, FlutterFire_Ui ',
    ),
    AdditionalProject(
      context: context,
      projectIcon: Icons.flutter_dash_rounded,
      projectUrl: 'www.github.com/a6hii/animated_splash_screen',
      projectName: 'Animated splash screen',
      projectDetail:
          'A Flutter app with amazing splash screen. Uses Lottie files.',
      technologies: 'Flutter, Dart, Lottie',
    ),
    AdditionalProject(
      context: context,
      projectIcon: Icons.web,
      projectUrl: 'www.luxurycarspatnamoh.com/',
      projectName: 'Business Website',
      projectDetail:
          'A no-code website created for a car rental company. Wrote some blogs to increase SEO and did advanced SEO which made it rank top on google.',
      technologies: 'EditorX, Google, My brain',
    ),
    AdditionalProject(
      context: context,
      projectIcon: Icons.html,
      projectUrl: 'www.webfreakz.in/',
      projectName: 'HTML website',
      projectDetail:
          'A website created for a software agency which was started by my friends and me.',
      technologies: 'HTML, CSS, PHP',
    ),
  ];
}
