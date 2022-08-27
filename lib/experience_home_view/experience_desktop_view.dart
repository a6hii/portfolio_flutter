import 'package:abhi_flutter_portfolio/experience_home_view/components/experience_detail.dart';
import 'package:abhi_flutter_portfolio/utils/config.dart';
import 'package:flutter/material.dart';

class ExperienceDesktopView extends StatelessWidget {
  const ExperienceDesktopView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: cDesktopHorizontalPadding,
        vertical: cDesktopVerticalPadding,
      ),
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                sExperienceTitle,
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Divider(
                    color: Colors.white,
                    thickness: 2,
                    indent: 20,
                    endIndent: 10,
                  ),
                ),
              ),
            ],
          ),
          ExperienceDetail(
            context: context,
          ),
        ],
      ),
    );
  }
}
