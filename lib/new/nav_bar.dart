import 'package:abhi_flutter_portfolio/new/app_dimensions.dart';
import 'package:abhi_flutter_portfolio/new/entrance_fader.dart';
import 'package:abhi_flutter_portfolio/new/provider/scroll_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavBarActionButton extends StatelessWidget {
  final String label;
  final int index;
  const NavBarActionButton({
    Key? key,
    required this.label,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const baseStyle = TextStyle(fontFamily: 'Poppins');
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return EntranceFader(
      offset: const Offset(0, -10),
      delay: const Duration(milliseconds: 100),
      duration: const Duration(milliseconds: 250),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: AppDimensions.space()),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: MaterialButton(
          splashColor: Colors.white54,
          highlightColor: Colors.white54,
          hoverColor: Colors.orange,
          onPressed: () {
            scrollProvider.scroll(index);
          },
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: AppDimensions.space(0.5),
              horizontal: AppDimensions.space(0.5),
            ),
            child: Text(
              label,
              style: baseStyle.copyWith(fontSize: AppDimensions.font(6)),
            ),
          ),
        ),
      ),
    );
  }
}
