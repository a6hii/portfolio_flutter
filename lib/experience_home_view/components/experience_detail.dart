import 'package:abhi_flutter_portfolio/utils/open_functions.dart';
import 'package:flutter/material.dart';

class ExperienceDetail extends StatelessWidget {
  const ExperienceDetail({
    Key? key,
    required this.context,
  }) : super(key: key);

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
      // child: ListView(
      //   physics: const NeverScrollableScrollPhysics(),
      //   shrinkWrap: true,
      //   children: [
      //     Container(
      //       padding: const EdgeInsets.all(20),
      //       color: Colors.grey,
      //       child: Text(
      //         '2020 - Present: Indie Flutter App developer and making Youtube content.',
      //         style: Theme.of(context).textTheme.bodyLarge!.copyWith(
      //               color: Colors.white,
      //             ),
      //       ),
      //     ),
      //     Container(
      //       padding: const EdgeInsets.all(20),
      //       child: Text(
      //         '2016 - 2019: Senior Project Engineer at Wipro Ltd.',
      //         style: Theme.of(context).textTheme.bodyLarge!.copyWith(
      //               color: Colors.white,
      //             ),
      //       ),
      //     ),
      //     Container(
      //       padding: const EdgeInsets.all(20),
      //       color: Colors.grey,
      //       child: Text(
      //         ' l10n.experiance2016',
      //         style: Theme.of(context).textTheme.bodyLarge!.copyWith(
      //               color: Colors.white,
      //             ),
      //       ),
      //     ),
      //     Container(
      //       padding: const EdgeInsets.all(20),
      //       child: Text(
      //         'l10n.experiance2012',
      //         style: Theme.of(context).textTheme.bodyLarge!.copyWith(
      //               color: Colors.white,
      //             ),
      //       ),
      //     ),
      //   ],
      // ),
      //     child: ListView.builder(
      //         itemCount: data.length,
      //         itemBuilder: (BuildContext context, int index) =>
      //             _buildList(data[index]),
      //       ),
      //   );
      // }
      // Widget _buildList(Menu list) {
      //   if (list.subMenu.isEmpty)
      //     return Builder(
      //       builder: (context) {
      //         return ListTile(
      //             onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => SubCategory(list.name))),
      //             leading: SizedBox(),
      //             title: Text(list.name)
      //         );
      //       }
      //     );
      //   return ExpansionTile(
      //     leading: Icon(list.icon),
      //     title: Text(
      //       list.name,
      //       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      //     ),
      //     children: list.subMenu.map(_buildList).toList(),
      //   );
      // }
      child: ListView(
        //physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          ExpansionTile(
            backgroundColor: Colors.grey[600],
            collapsedBackgroundColor: Colors.grey[600],
            collapsedTextColor: Colors.white,
            textColor: Colors.white,
            childrenPadding: const EdgeInsets.all(16),
            expandedAlignment: Alignment.centerLeft,
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            title: const Text('My Expansion Tile'),
            children: const <Widget>[
              Text('Item 1'),
              Text('Item 2'),
              Text('Item 1'),
              Text('Item 2'),
              Text('Item 1'),
              Text('Item 2'),
              Text('Item 1'),
              Text('Item 2'),
            ],
          ),
          ExpansionTile(
            backgroundColor: Colors.black,
            collapsedBackgroundColor: Colors.black,
            collapsedTextColor: Colors.white,
            textColor: Colors.white,
            childrenPadding: const EdgeInsets.all(16),
            expandedAlignment: Alignment.centerLeft,
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            title: const Text('My Expansion Tile'),
            children: const <Widget>[
              Text('Item 1'),
              Text('Item 2'),
              Text('Item 1'),
              Text('Item 2'),
              Text('Item 1'),
              Text('Item 2'),
              Text('Item 1'),
              Text('Item 2'),
            ],
          ),
        ],
      ),
    );
  }
}
