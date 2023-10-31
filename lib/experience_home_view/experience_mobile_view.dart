import 'package:abhi_flutter_portfolio/experience_home_view/components/experience_detail.dart';
import 'package:abhi_flutter_portfolio/experience_home_view/experience_desktop_view.dart';
import 'package:abhi_flutter_portfolio/utils/config.dart';
import 'package:flutter/material.dart';

class ExperienceMobileView extends StatefulWidget {
  const ExperienceMobileView({
    Key? key,
  }) : super(key: key);

  @override
  State<ExperienceMobileView> createState() => _ExperienceMobileViewState();
}

class _ExperienceMobileViewState extends State<ExperienceMobileView> {
  final _tabController = TabController(
    length: 3,
    vsync: SingleTickerProvider(),
  );

  @override
  void initState() {
    _tabController.addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(cMobileDefaultPadding),
      height: 1100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              sExperienceTitle,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall
                  ?.copyWith(color: Colors.white),
            ),
          ),
          const Divider(
            color: Colors.white,
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
          Expanded(
            child: ExperienceDetail(
              context: context,
              tabController: _tabController,
            ),
          ),
        ],
      ),
    );
  }
}
