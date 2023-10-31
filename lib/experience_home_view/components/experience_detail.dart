import 'package:abhi_flutter_portfolio/utils/open_functions.dart';
import 'package:flutter/material.dart';

class ExpansionTileModel extends ChangeNotifier {
  int _expandedTileIndex = 1;

  int get expandedTileIndex => _expandedTileIndex;

  void collapseOthers(int newIndex) {
    _expandedTileIndex = newIndex;
    notifyListeners();
  }
}

class ExperienceDetail extends StatelessWidget {
  const ExperienceDetail({
    Key? key,
    required this.context,
    required this.tabController,
  }) : super(key: key);

  final BuildContext context;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: isMobileView(context: context)
          ? const EdgeInsets.all(5)
          : const EdgeInsets.all(50),
      padding: isMobileView(context: context)
          ? const EdgeInsets.all(5)
          : const EdgeInsets.all(50),
      child: Column(
        children: [
          TabBar(
            dividerColor: Colors.orange,
            indicatorColor: Colors.orange,
            labelColor: Colors.orange,
            controller: tabController,
            tabs: [
              Tab(
                text: !isMobileView(context: context)
                    ? 'Trigsy Technologies'
                    : 'Trigsy',
              ),
              Tab(
                text: !isMobileView(context: context)
                    ? 'Fiesto Party Services'
                    : 'Fiesto',
              ),
              Tab(
                text: !isMobileView(context: context)
                    ? 'Webfreakz Texhnologies'
                    : 'Webfreakz',
              )
            ],
          ),
          SizedBox(
            height: isMobileView(context: context) ? 800 : 500,
            child: TabBarView(controller: tabController, children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 6, bottom: 6),
                    child: TextButton(
                      style: const ButtonStyle(alignment: Alignment.centerLeft),
                      child: Text(
                        'www.trigsy.com',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue.shade300,
                        ),
                      ),
                      onPressed: () => appsLaunchGivenUrl(
                        urlToLaunch: 'www.trigsy.com',
                      ),
                    ),
                  ),
                  Text(
                    'Bangalore - Software Engineer, Flutter ',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Text('-October 2022 to Present',
                      style: Theme.of(context).textTheme.titleSmall),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    '\u2022 Work alongside a team of Backend Developers, UI/UX Designers and QA with a'
                    'focus with the goal of delivering high-quality product.',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    '\u2022 Built 2 apps with Flutter which are published on Google Play Store and App'
                    'store.',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    '\u2022 Built Trigsy website(www.trigsy.com) using ReactJs, TailwindCss and Redux',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    '\u2022 Planning clean and scalable app architecture.',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    '\u2022 Research and POCs on different flutter libraries and third-party libraries like'
                    'QuickBlox, OtpLess, PhonePe Merchant Payment Gateway, etc.'
                    'Utilized state management techniques to create a responsive and reactive user'
                    'interface',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    '\u2022 Implemented push notifications using Firebase Cloud Messaging.',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    '\u2022 Integrated Google maps APIs, PhonePe Payment WebApi.',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    '\u2022 Utilized background process to fetch user'
                    's live location.',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    '\u2022 Worked with REST apis and wrote Integration, Unit, Golden and Widget tests.',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Patna - Lead Tech, Social Media Marketing- ',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Text(
                    '-November 2021 - June 2022',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '\u2022 Made an flutter app published it on playstore.',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    '\u2022 Implemented Firebase auth, Cloud-firestore, and Firebase Cloud Messaging for notifications.',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    '\u2022 Handled social media pages. (Instagram: www.instagram.com/fiestoin/ )',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    '\u2022 Integrated Razorpay payment gateway.',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    '\u2022 Handled Customers, Logistics, Freelance employs.',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    '\u2022 Made company' 's website with react and css.',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 8,
                  ),
                  TextButton(
                    style: const ButtonStyle(alignment: Alignment.centerLeft),
                    child: Text(
                      'www.webfreakz.in',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue.shade300,
                      ),
                    ),
                    onPressed: () =>
                        appsLaunchGivenUrl(urlToLaunch: 'www.webfreakz.in'),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text('Patna- Web Developer, Marketing and SEO ',
                      style: Theme.of(context).textTheme.titleSmall),
                  Text('-September 2020 to July 2021',
                      style: Theme.of(context).textTheme.titleSmall),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    '\u2022 Designed and developed company website collaborating with the founder.',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    '\u2022 Designed and developed multiple websites for different restaurants and businesses.',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    '\u2022 Implemented basic and advanced Search Engine Optimization for multiple websites.',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    '\u2022 Handled social media pages of multiple businesses for digital marketing and their Google business profiles.',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              )
            ]),
          )
        ],
      ),
    );
  }
}
