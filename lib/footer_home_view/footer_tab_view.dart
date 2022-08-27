import 'package:abhi_flutter_portfolio/utils/config.dart';
import 'package:abhi_flutter_portfolio/utils/open_functions.dart';
import 'package:flutter/material.dart';

class FooterTabView extends StatelessWidget {
  const FooterTabView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.all(cTabDefaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: socialWidget(),
          ),
          TextButton(
            onPressed: () => appsLaunchGivenUrl(
              urlToLaunch: 'https://github.com/a6hhii',
            ),
            child: Text(
              'Built with flutter',
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
