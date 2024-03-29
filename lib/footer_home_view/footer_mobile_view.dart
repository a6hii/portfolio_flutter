import 'package:abhi_flutter_portfolio/utils/config.dart';
import 'package:abhi_flutter_portfolio/utils/open_functions.dart';
import 'package:flutter/material.dart';

class FooterMobileView extends StatelessWidget {
  const FooterMobileView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 460,
      padding: const EdgeInsets.all(cMobileDefaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: socialWidget(),
          ),
          TextButton(
            onPressed: () => appsLaunchGivenUrl(
              urlToLaunch: 'www.github.com/a6hhii',
            ),
            child: const Text(
              'Built with Flutter\nusing Provider and Firebase',
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
