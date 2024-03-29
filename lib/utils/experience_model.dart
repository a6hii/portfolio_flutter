// import 'package:flutter/material.dart';

// List dataList = [
//   {
//     "name": 'Where I\'ve worked',

//     "subMenu": [
//       {"icon": Icons.arrow_right_rounded,},
//       {"name": "Orders"},
//       {"name": "Invoices"}
//     ]
//   },
//   {
//     "name": "Marketing",
//     "icon": Icons.arrow_right_rounded,
//     "subMenu": [
//       {
//         "name": "Promotions",
//         "subMenu": [
//           {"name": "Catalog Price Rule"},
//           {"name": "Cart Price Rules"}
//         ]
//       },
//       {
//         "name": "Communications",
//         "subMenu": [
//           {"name": "Newsletter Subscribers"}
//         ]
//       },
//       {
//         "name": "SEO & Search",
//         "subMenu": [
//           {"name": "Search Terms"},
//           {"name": "Search Synonyms"}
//         ]
//       },
//       {
//         "name": "User Content",
//         "subMenu": [
//           {"name": "All Reviews"},
//           {"name": "Pending Reviews"}
//         ]
//       }
//     ]
//   }
// ];

// class Menu {
//   String name;
//   IconData icon;
//   List<Menu> subMenu = [];

//   Menu({this.name, this.subMenu, this.icon});

//   Menu.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     icon = json['icon'];
//     if (json['subMenu'] != null) {
//       subMenu.clear();
//       json['subMenu'].forEach((v) {
//         subMenu?.add(new Menu.fromJson(v));
//       });
//     }
//   }
// }

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices =>
      {PointerDeviceKind.touch, PointerDeviceKind.mouse};
}
