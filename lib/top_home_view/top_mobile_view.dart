import 'package:abhi_flutter_portfolio/utils/config.dart';
import 'package:abhi_flutter_portfolio/utils/open_functions.dart';
import 'package:flutter/material.dart';

class TopMobileView extends StatelessWidget {
  const TopMobileView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 100,
      padding: const EdgeInsets.all(cMobileDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const SizedBox(
          //   height: 30,
          // ),
          Text(
            sMainTitle,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.white,
                ),
          ),
          Text(
            sName,
            style: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(color: Colors.orange),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              sWorkTitle,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.white,
                    letterSpacing: 10,
                  ),
            ),
          ),
          Text(
            sDescription,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                ),
          ),
          Container(
            height: 62,
            child: Row(
              children: socialWidget(),
            ),
          ),
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(
                color: Colors.greenAccent,
                width: 4,
              ),
            ),
            onPressed: () => openURL(
                'https://drive.google.com/file/d/1tPHb9ZhKF5nDSp7rYtTm3EBxrxNx-WiM/view?usp=sharing'),
            child: Container(
              padding: const EdgeInsets.all(12),
              child: Text(
                "Resume",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
