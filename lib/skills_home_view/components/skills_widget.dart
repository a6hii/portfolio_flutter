import 'package:flutter/material.dart';

class SkillsWidget extends StatelessWidget {
  final String skill;
  const SkillsWidget({super.key, required this.skill});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 5, 4, 5),
      child: Chip(
        labelPadding: const EdgeInsets.all(8),
        label: Text(skill),
        backgroundColor: Colors.black26,
      ),
    );
  }
}
