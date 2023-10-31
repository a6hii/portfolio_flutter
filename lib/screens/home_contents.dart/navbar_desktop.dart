import 'package:abhi_flutter_portfolio/new/app_dimensions.dart';
import 'package:abhi_flutter_portfolio/new/entrance_fader.dart';
import 'package:abhi_flutter_portfolio/new/nav_bar.dart';
import 'package:abhi_flutter_portfolio/new/navbar_utils.dart';
import 'package:abhi_flutter_portfolio/new/provider/drawer_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:universal_html/html.dart' as html;

class NavbarDesktop extends StatelessWidget {
  const NavbarDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final appProvider = Provider.of<AppProvider>(context);
    const baseStyle = TextStyle(fontFamily: 'Poppins');

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppDimensions.space(0.5),
        horizontal: AppDimensions.space(0.5),
      ),
      color: Colors.black,
      child: Row(
        children: [
          ...NavBarUtils.names.asMap().entries.map(
                (e) => NavBarActionButton(
                  label: e.value,
                  index: e.key,
                ),
              ),
          EntranceFader(
            offset: const Offset(0, -10),
            delay: const Duration(milliseconds: 100),
            duration: const Duration(milliseconds: 250),
            child: MaterialButton(
              hoverColor: Colors.orange.withAlpha(150),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: const BorderSide(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                html.window.open(
                  'https://drive.google.com/file/d/1tPHb9ZhKF5nDSp7rYtTm3EBxrxNx-WiM/view?usp=sharing',
                  "pdf",
                );
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: AppDimensions.space(1.25),
                  horizontal: AppDimensions.space(0.45),
                ),
                child: Text(
                  'RESUME',
                  style: baseStyle.copyWith(fontSize: AppDimensions.font(6)),
                ),
              ),
            ),
          ),
          SizedBox(width: AppDimensions.space(1.0)),
        ],
      ),
    );
  }
}

class NavBarTablet extends StatelessWidget {
  const NavBarTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppDimensions.space(0.5)),
      child: Row(
        children: [
          SizedBox(width: AppDimensions.space()),
          IconButton(
            highlightColor: Colors.white54,
            splashRadius: AppDimensions.normalize(10),
            onPressed: () {
              drawerProvider.key.currentState!.openDrawer();
            },
            icon: const Icon(
              Icons.menu,
            ),
          ),
          const Expanded(child: SizedBox(width: double.infinity)),
          SizedBox(width: AppDimensions.space()),
        ],
      ),
    );
  }
}
