import 'package:abhi_flutter_portfolio/utils/open_functions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AdditionalProject extends StatelessWidget {
  const AdditionalProject({
    Key? key,
    required this.context,
    required this.projectIcon,
    required this.projectUrl,
    required this.projectName,
    required this.projectDetail,
    required this.technologies,
  }) : super(key: key);

  final BuildContext context;
  final IconData projectIcon;
  final String projectUrl;
  final String projectName;
  final String projectDetail;
  final String technologies;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        boxShadow: const [
          BoxShadow(
            offset: Offset(5, 5),
            color: Colors.white,
            blurRadius: 5,
            blurStyle: BlurStyle.outer,
          )
        ],
      ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                projectIcon,
                color: Colors.white,
                size: 30,
              ),
              IconButton(
                onPressed: () => appsLaunchGivenUrl(urlToLaunch: projectUrl),
                icon: const FaIcon(
                  FontAwesomeIcons.github,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
            ],
          ),
          Text(
            projectName,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
          Wrap(
            children: [
              Text(
                projectDetail,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.white,
                    ),
              ),
            ],
          ),
          Text(
            technologies,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
        ],
      ),
    );
  }
}
