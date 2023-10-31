import 'package:abhi_flutter_portfolio/contact_home_view/contact_home_view.dart';
import 'package:abhi_flutter_portfolio/education_home_view/edu_home_view.dart';
import 'package:abhi_flutter_portfolio/experience_home_view/experience_home_view.dart';
import 'package:abhi_flutter_portfolio/footer_home_view/footer_page.dart';
import 'package:abhi_flutter_portfolio/projects_home_view/projects_home_view.dart';
import 'package:abhi_flutter_portfolio/skills_home_view/skills_home_view.dart';
import 'package:abhi_flutter_portfolio/top_home_view/top_home_view.dart';
import 'package:flutter/material.dart';

class BodyUtils {
  static const List<Widget> views = [
    TopHomeView(),
    SkillsHomeView(),
    ProjectsHomeView(),
    ExperienceHomeView(),
    EduHomeView(),
    ContactHomeView(),
    FooterHomeView(),
  ];
}
