import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class SkillsWidget extends StatelessWidget {
  final String skill;
  const SkillsWidget({super.key, required this.skill});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(4, 5, 4, 5),
      child: Chip(
        labelPadding: EdgeInsets.all(8),
        label: Text(skill),
        backgroundColor: Colors.black26,
      ),
    );
  }
}
