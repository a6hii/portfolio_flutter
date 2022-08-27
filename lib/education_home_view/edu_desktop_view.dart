import 'package:abhi_flutter_portfolio/education_home_view/components/edu_details.dart';
import 'package:abhi_flutter_portfolio/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class EduDesktopView extends StatelessWidget {
  const EduDesktopView({super.key});

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
                'Education',
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
          EduDetails(
            context: context,
          ),
        ],
      ),
    );
  }
}
