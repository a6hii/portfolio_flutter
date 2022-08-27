import 'package:abhi_flutter_portfolio/utils/config.dart';
import 'package:abhi_flutter_portfolio/utils/open_functions.dart';
import 'package:flutter/material.dart';

class TopDesktopView extends StatelessWidget {
  const TopDesktopView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(
        horizontal: cDesktopHorizontalPadding,
        vertical: cDesktopVerticalPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            sMainTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: Colors.white),
          ),
          Text(
            sName,
            style: Theme.of(context)
                .textTheme
                .headline1
                ?.copyWith(color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              sWorkTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(color: Colors.white),
            ),
          ),
          Text(
            sDescription,
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Colors.white,
                  wordSpacing: 5,
                ),
          ),
          const SizedBox(
            height: 10,
          ),
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(
                color: Colors.greenAccent,
                width: 4,
              ),
            ),
            onPressed: () => appsLaunchGivenUrl(
              urlToLaunch: '_l10n.workYoutubeUrl',
            ),
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Available to work',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
