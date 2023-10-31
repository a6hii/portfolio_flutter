import 'package:abhi_flutter_portfolio/new/provider/scroll_provider.dart';

import 'package:abhi_flutter_portfolio/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeContentView extends StatelessWidget {
  const HomeContentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   color: Theme.of(context).primaryColorDark,
    //   child: Column(
    //     children: const [
    //       TopHomeView(),
    //       SkillsHomeView(),
    //       ProjectsHomeView(),
    //       ExperienceHomeView(),
    //       EduHomeView(),
    //       ContactHomeView(),
    //       FooterHomeView(),
    //     ],
    //   ),
    // );
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return ListView.builder(
      shrinkWrap: true,
      controller: scrollProvider.controller,
      itemCount: BodyUtils.views.length,
      itemBuilder: (context, index) => BodyUtils.views[index],
    );
  }
}
