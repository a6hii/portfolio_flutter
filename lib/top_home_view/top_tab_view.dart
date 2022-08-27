import 'package:abhi_flutter_portfolio/utils/config.dart';
import 'package:abhi_flutter_portfolio/utils/open_functions.dart';
import 'package:flutter/material.dart';

class TopTabView extends StatelessWidget {
  const TopTabView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.all(cTabDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
                .headline2
                ?.copyWith(color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              sWorkTitle,
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Colors.white,
                    letterSpacing: 10,
                  ),
            ),
          ),
          Text(
            sDescription,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: Colors.white,
                ),
          ),
          //const SizedBox(height: 30),
          Expanded(
            child: Row(
              children: socialWidget(),
            ),
          ),
          const SizedBox(height: 30),
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(
                color: Colors.greenAccent,
                width: 4,
              ),
            ),
            onPressed: () {},
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Available to work',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
