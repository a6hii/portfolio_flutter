import 'package:abhi_flutter_portfolio/new/app_dimensions.dart';
import 'package:abhi_flutter_portfolio/new/navbar_utils.dart';
import 'package:abhi_flutter_portfolio/new/provider/scroll_provider.dart';
import 'package:abhi_flutter_portfolio/utils/open_functions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const baseStyle = TextStyle(fontFamily: 'Poppins');
    //final appProvider = Provider.of<AppProvider>(context);
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return Drawer(
      child: Material(
        color: Colors.black.withOpacity(0.6),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 25.0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...NavBarUtils.names.asMap().entries.map(
                    (e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        hoverColor: Colors.greenAccent,
                        onPressed: () {
                          scrollProvider.scrollMobile(e.key);
                          Navigator.pop(context);
                        },
                        child: ListTile(
                          leading: Icon(
                            NavBarUtils.icons[e.key],
                            color: Colors.white,
                          ),
                          title: Text(
                            e.value,
                            style: baseStyle.copyWith(
                                fontSize: AppDimensions.font(6)),
                          ),
                        ),
                      ),
                    ),
                  ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  hoverColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: const BorderSide(color: Colors.green)),
                  onPressed: () => openURL(
                      'https://drive.google.com/file/d/1tPHb9ZhKF5nDSp7rYtTm3EBxrxNx-WiM/view?usp=sharing'),
                  child: const ListTile(
                    leading: Icon(
                      Icons.book,
                      color: Colors.orange,
                    ),
                    title: Text(
                      'RESUME',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
