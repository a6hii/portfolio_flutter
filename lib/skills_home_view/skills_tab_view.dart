import 'package:abhi_flutter_portfolio/skills_home_view/components/skills_widget.dart';
import 'package:flutter/material.dart';

class SkillsTabView extends StatelessWidget {
  const SkillsTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Skills',
          style: Theme.of(context)
              .textTheme
              .headline3
              ?.copyWith(color: Colors.white),
        ),
        Wrap(
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
    );
  }
}
