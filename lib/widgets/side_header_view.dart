import 'package:abhi_flutter_portfolio/utils/open_functions.dart';
import 'package:flutter/material.dart';

class SiderHeaderPage extends StatelessWidget {
  const SiderHeaderPage({
    Key? key,
    required Alignment alignment,
    required Color color,
    required bool isEmailHeader,
  })  : _alignment = alignment,
        _color = color,
        _isEmailHeader = isEmailHeader,
        super(key: key);

  final Alignment _alignment;
  final Color _color;
  final bool _isEmailHeader;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: _alignment,
      child: Container(
        color: _color,
        width: 70,
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
                        onPressed: () {}, //=> appsSendEmail(context: context),
                        child: const Text(
                          'abhi.code101@gmail.com',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  _headerVerticalDivider(),
                ],
              )
            : Column(
                children: [
                  _headerVerticalDivider(),
                  Column(
                    children: socialWidget(),
                  )
                ],
              ),
      ),
    );
  }

  Widget _headerVerticalDivider() {
    return const Expanded(
      child: VerticalDivider(
        color: Colors.white,
        width: 5,
        indent: 20,
        endIndent: 20,
      ),
    );
  }
}
