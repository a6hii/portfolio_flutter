import 'package:abhi_flutter_portfolio/experience_home_view/components/experience_detail.dart';
import 'package:abhi_flutter_portfolio/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class SingleTickerProvider implements TickerProvider {
  @override
  Ticker createTicker(TickerCallback onTick) {
    return Ticker(onTick);
  }
}

class ExperienceDesktopView extends StatefulWidget {
  const ExperienceDesktopView({
    Key? key,
  }) : super(key: key);

  @override
  State<ExperienceDesktopView> createState() => _ExperienceDesktopViewState();
}

class _ExperienceDesktopViewState extends State<ExperienceDesktopView> {
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
      padding: const EdgeInsets.symmetric(
        horizontal: cDesktopHorizontalPadding,
        vertical: cDesktopVerticalPadding - 50,
      ),
      height: MediaQuery.of(context).size.height + 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                sExperienceTitle,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
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
          ExperienceDetail(
            context: context,
            tabController: _tabController,
          ),
        ],
      ),
    );
  }
}
