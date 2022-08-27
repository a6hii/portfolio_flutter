import 'package:abhi_flutter_portfolio/utils/config.dart';
import 'package:abhi_flutter_portfolio/utils/open_functions.dart';
import 'package:flutter/material.dart';

class FooterDesktopView extends StatelessWidget {
  const FooterDesktopView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: cDesktopHorizontalPadding,
        vertical: cDesktopVerticalPadding,
      ),
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () => appsLaunchGivenUrl(
              urlToLaunch: 'https://github.com/a6hhii',
            ),
            child: Text(
              'Built with Flutter',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
