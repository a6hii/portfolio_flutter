import 'package:abhi_flutter_portfolio/skills_home_view/components/skills_widget.dart';
import 'package:abhi_flutter_portfolio/utils/config.dart';
import 'package:flutter/material.dart';

class SkillsDesktopView extends StatelessWidget {
  const SkillsDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: cDesktopHorizontalPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Skills',
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(color: Colors.white),
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
          SizedBox(
            height: 20,
          ),
          Wrap(
            spacing: 2,
            children: const [
              SkillsWidget(skill: 'Flutter'),
              SkillsWidget(skill: 'Firebase'),
              SkillsWidget(skill: 'Git/CI/CD'),
              SkillsWidget(skill: 'MySql'),
              SkillsWidget(skill: 'Dart'),
              SkillsWidget(skill: 'Java'),
              SkillsWidget(skill: 'NoSql'),
              SkillsWidget(skill: 'C'),
              SkillsWidget(skill: 'C++'),
              SkillsWidget(skill: 'DSA'),
              SkillsWidget(skill: 'Figma'),
              SkillsWidget(skill: 'HTML'),
              SkillsWidget(skill: 'Js'),
            ],
          )
        ],
      ),
    );
  }
}
