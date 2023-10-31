import 'package:abhi_flutter_portfolio/education_home_view/components/edu_details.dart';
import 'package:abhi_flutter_portfolio/utils/config.dart';
import 'package:flutter/material.dart';

class EduTabView extends StatelessWidget {
  const EduTabView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(cTabDefaultPadding),
      height: MediaQuery.of(context).size.height - 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Education',
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(color: Colors.white),
            ),
          ),
          const Divider(
            color: Colors.white,
            thickness: 2,
            endIndent: cTabDefaultPadding,
            indent: cDesktopDefaultPadding,
          ),
          const SizedBox(
            height: 30,
          ),
          EduDetails(
            context: context,
          ),
        ],
      ),
    );
  }
}
