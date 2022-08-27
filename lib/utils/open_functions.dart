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
  launchUrl(uriToLaunch);
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

bool isMobileView({required BuildContext context}) {
  return MediaQuery.of(context).size.width <= cTabletMaxWidth;
}

List<Widget> socialWidget() {
  return [
    IconButton(
      onPressed: () => appsLaunchGivenUrl(
        urlToLaunch: 'www.github.com/a6hii',
      ),
      icon: _socialIcon(icon: FontAwesomeIcons.github),
    ),
    IconButton(
      onPressed: () => appsLaunchGivenUrl(
        urlToLaunch: 'gmail',
      ),
      icon: _socialIcon(icon: FontAwesomeIcons.envelope),
    ),
    IconButton(
      onPressed: () => appsLaunchGivenUrl(
        urlToLaunch: 'socialTwitterUrl',
      ),
      icon: _socialIcon(icon: FontAwesomeIcons.twitter),
    ),
    IconButton(
      onPressed: () => appsLaunchGivenUrl(
        urlToLaunch: 'socialInstagramUrl',
      ),
      icon: _socialIcon(icon: FontAwesomeIcons.instagram),
    ),
    IconButton(
      onPressed: () => appsLaunchGivenUrl(
        urlToLaunch: 'linkedin',
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
      projectIcon: Icons.voice_chat_outlined,
      projectUrl: 'https://github.com/a6hii',
      projectName: 'Onboarding/login/Signup',
      projectDetail:
          'A Flutter-based voice recorder app for iOS and Android. That can record, store, list, and playback voice recorded through physical devices.',
      technologies: 'Dart HTML Ruby Swift',
    ),
    AdditionalProject(
      context: context,
      projectIcon: Icons.folder_outlined,
      projectUrl: 'https://github.com/a6hii',
      projectName: 'OnboardingSplash',
      projectDetail:
          'A Flutter-based mobile application that handles with authentication of a user into the app. The authentication uses Firebase authentication such as google and phone number. The state management used is Flutter Bloc.',
      technologies: 'Dart HTML Ruby Swift Firebase',
    ),
    AdditionalProject(
      context: context,
      projectIcon: Icons.image_outlined,
      projectUrl: 'https://github.com/a6hii',
      projectName: 'Google+Phone auth',
      projectDetail:
          'A Flutter app that takes in the video as input and turns them into GIFs. This flutter application can take videos, and convert them into GIFs. Later store and display them back to the user.',
      technologies: 'Dart HTML Ruby Swift Firebase',
    ),
    AdditionalProject(
      context: context,
      projectIcon: Icons.chat_outlined,
      projectUrl: 'https://github.com/a6hii',
      projectName: 'Another project/website',
      projectDetail: 'l10n.workFlutterChatDetail',
      technologies: 'Dart HTML Ruby Swift Firebase',
    )
  ];
}

void appsSendEmail({required BuildContext context}) {
  final emailURI = Uri(
    scheme: 'mailto',
    path: 'abhi.code101@gmail.com',
    query: 'subject=Hi! From your portfolio',
  );
  launchUrl(emailURI);
}
