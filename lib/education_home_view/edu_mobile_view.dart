import 'package:abhi_flutter_portfolio/education_home_view/components/edu_details.dart';
import 'package:abhi_flutter_portfolio/utils/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class EduMobileView extends StatelessWidget {
  const EduMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(cMobileDefaultPadding),
      height: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Education',
              style: Theme.of(context)
                  .textTheme
                  .headline2
                  ?.copyWith(color: Colors.white),
            ),
          ),
          const Divider(
            color: Colors.white,
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
          EduDetails(
            context: context,
          ),
        ],
      ),
    );
  }
}
