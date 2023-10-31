import 'package:abhi_flutter_portfolio/experience_home_view/components/experience_detail.dart';
import 'package:abhi_flutter_portfolio/experience_home_view/experience_desktop_view.dart';
import 'package:abhi_flutter_portfolio/utils/config.dart';
import 'package:flutter/material.dart';

class ExperienceTabView extends StatefulWidget {
  const ExperienceTabView({
    Key? key,
  }) : super(key: key);

  @override
  State<ExperienceTabView> createState() => _ExperienceTabViewState();
}

class _ExperienceTabViewState extends State<ExperienceTabView> {
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
      padding: const EdgeInsets.all(cTabDefaultPadding),
      height: MediaQuery.of(context).size.height + 200,
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
            endIndent: 10,
            indent: 10,
          ),
          const SizedBox(
            height: 30,
          ),
          ExperienceDetail(
            context: context,
            tabController: _tabController,
          ),
        ],
      ),
    );
  }
}
