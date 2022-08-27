import 'package:abhi_flutter_portfolio/experience_home_view/components/experience_detail.dart';
import 'package:abhi_flutter_portfolio/utils/config.dart';
import 'package:flutter/material.dart';

class ExperienceTabView extends StatelessWidget {
  const ExperienceTabView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(cTabDefaultPadding),
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              sExperienceTitle,
              style: Theme.of(context)
                  .textTheme
                  .headline2
                  ?.copyWith(color: Colors.white),
            ),
          ),
          const Divider(
            color: Colors.white,
            thickness: 2,
            endIndent: cTabDefaultPadding,
            indent: cDesktopDefaultPadding,
          ),
          ExperienceDetail(
            context: context,
          ),
        ],
      ),
    );
  }
}
