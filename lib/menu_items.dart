import 'package:abhi_flutter_portfolio/utils/open_functions.dart';
import 'package:flutter/material.dart';

List<Widget> navItems({required BuildContext context}) {
  //final l10n = context.l10n;
  final items = <Widget>[];
  if (isMobileView(context: context)) {
    items.add(
      DrawerHeader(
        padding: EdgeInsets.zero,
        child: DrawerHeader(
          decoration: const BoxDecoration(),
          child: Image.asset(
            'assets/images/my_img.jpg',
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
    for (final item in _navItemToDisplay(context: context)) {
      items.add(item);
    }
  } else {
    for (final item in _navItemToDisplay(context: context)) {
      items.add(item);
    }
  }
  items.add(navResumeButton(context: context));
  return items;
}

List<Widget> _navItemToDisplay({required BuildContext context}) {
  return [
    _navItem(textToDisplay: 'Projects', context: context),
    _navItem(textToDisplay: 'Experience', context: context),
    _navItem(textToDisplay: 'Education', context: context),
    _navItem(textToDisplay: 'Contact', context: context),
  ];
}

Widget _navItem({
  required String textToDisplay,
  required BuildContext context,
}) {
  return isMobileView(context: context)
      ? ListTile(
          title: Text(
            textToDisplay,
            style: _homeNavTextStyle(),
          ),
          onTap: () {},
        )
      : TextButton(
          onPressed: () {},
          child: Text(
            textToDisplay,
            style: _homeNavTextStyle(),
          ),
        );
}

TextStyle _homeNavTextStyle() {
  return const TextStyle(
    color: Colors.white,
  );
}

Widget navResumeButton({required BuildContext context}) {
  if (isMobileView(context: context)) {
    return ListTile(
      title: Text(
        'Resume',
        style: _homeNavTextStyle(),
      ),
      onTap: () {},
    );
  } else {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 20,
      ),
      child: MaterialButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
            color: Colors.white,
            width: 2,
          ),
        ),
        child: const Text(
          'Resume',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
