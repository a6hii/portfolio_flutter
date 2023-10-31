import 'package:abhi_flutter_portfolio/utils/open_functions.dart';
import 'package:flutter/material.dart';

class SiderHeaderPage extends StatelessWidget {
  const SiderHeaderPage({
    Key? key,
    required Alignment alignment,
    required Color color,
    required bool isEmailHeader,
    required this.calculateScrollIndicatorColor,
    required this.scrollPercentage,
  })  : _alignment = alignment,
        _color = color,
        _isEmailHeader = isEmailHeader,
        super(key: key);

  final Alignment _alignment;
  final Color _color;
  final bool _isEmailHeader;
  final Color calculateScrollIndicatorColor;
  final double scrollPercentage;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: _alignment,
      child: Container(
        // color: _color,
        width: 80,
        height: MediaQuery.of(context).size.height * 0.7,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        child: _isEmailHeader
            ? Column(
                children: [
                  Center(
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: TextButton(
                        onPressed: () => appsSendEmail(context: context),
                        child: const Text(
                          'abhi.code101@gmail.com',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  _headerVerticalDivider(
                      scrollPercentage, calculateScrollIndicatorColor, -1),
                ],
              )
            : Column(
                children: [
                  _headerVerticalDivider(
                      scrollPercentage, calculateScrollIndicatorColor, 1),
                  Column(
                    children: socialWidget(),
                  )
                ],
              ),
      ),
    );
  }

  Widget _headerVerticalDivider(double scrollPercentage,
      Color calculateScrollIndicatorColor, int quarterTurns) {
    return Expanded(
      child: RotatedBox(
        quarterTurns: quarterTurns,
        child: LinearProgressIndicator(
          value: scrollPercentage,
          valueColor:
              AlwaysStoppedAnimation<Color>(calculateScrollIndicatorColor),
          backgroundColor: Colors.white, // Background color
        ),
      ),
    );
  }
}
