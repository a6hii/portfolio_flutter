import 'package:abhi_flutter_portfolio/utils/open_functions.dart';
import 'package:flutter/material.dart';

class EduDetails extends StatelessWidget {
  const EduDetails({super.key, required this.context});
  final BuildContext context;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: isMobileView(context: context)
          ? const EdgeInsets.all(5)
          : const EdgeInsets.all(50),
      padding: isMobileView(context: context)
          ? const EdgeInsets.all(5)
          : const EdgeInsets.all(50),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.grey,
            child: Text(
              '2016-2019: Dropped out in 3rd year of B.E. in Information Science at Dayananda Sagar Academy of Tech. & Mgmt.(Affiliated to VTU), Bengaluru',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              '2014 - 2016: Patna Central School(CBSE), Patna',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.grey,
            child: Text(
              '2006-2014: St. Paul\'s High School(ICSE), Patna',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
