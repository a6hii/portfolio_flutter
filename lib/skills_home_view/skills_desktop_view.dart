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
                    .displaySmall
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
          const SizedBox(
            height: 20,
          ),
          const Wrap(
            spacing: 2,
            children: [
              SkillsWidget(skill: 'Flutter'), SkillsWidget(skill: 'Dart'),
              SkillsWidget(skill: 'Dart'),
              SkillsWidget(skill: 'Git/CI/CD'),
              SkillsWidget(skill: 'BLoC, Provider, RiverPod, etc.'),
              SkillsWidget(skill: 'Working with REST APIs'),
              SkillsWidget(skill: 'Strong attention to details'),

              SkillsWidget(skill: 'Good attitude and open to learning'),
              SkillsWidget(
                  skill: 'Great analytical and problem solving skills'),

              SkillsWidget(skill: 'Firebase'),
              SkillsWidget(skill: 'MySql'),

              SkillsWidget(skill: 'Java'),
              // SkillsWidget(skill: 'NoSql'),
              // SkillsWidget(skill: 'C'),
              // SkillsWidget(skill: 'C++'),
              // SkillsWidget(skill: 'DSA'),
              SkillsWidget(skill: 'Figma'),
              SkillsWidget(skill: 'HTML/CSS'),
              SkillsWidget(skill: 'ReactJs'),
              SkillsWidget(skill: 'NodeJS'),
              SkillsWidget(skill: 'TypeScript'),
            ],
          )
        ],
      ),
    );
  }
}
