import 'package:abhi_flutter_portfolio/utils/config.dart';
import 'package:abhi_flutter_portfolio/utils/open_functions.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TopDesktopView extends StatefulWidget {
  const TopDesktopView({
    Key? key,
  }) : super(key: key);

  @override
  State<TopDesktopView> createState() => _TopDesktopViewState();
}

class _TopDesktopViewState extends State<TopDesktopView>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // color: Colors.red,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(
            horizontal: cDesktopHorizontalPadding,
            vertical: cDesktopVerticalPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                sMainTitle,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: Colors.white),
              ),
              Text(
                sName,
                style: Theme.of(context)
                    .textTheme
                    .displayLarge
                    ?.copyWith(color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  sWorkTitle,
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: Colors.white),
                ),
              ),
              Text(
                sDescription,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                      wordSpacing: 5,
                    ),
              ),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                    color: Color(0xFF69F0AE),
                    width: 4,
                  ),
                ),
                onPressed: () => openURL(
                    'https://drive.google.com/file/d/1tPHb9ZhKF5nDSp7rYtTm3EBxrxNx-WiM/view?usp=sharing'),
                hoverColor: const Color(0xFFFF9800),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'View Resume',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: -136,
          right: 60,
          child: MouseRegion(
            onEnter: (event) {
              setState(() {
                _controller.stop();
              });
            },
            onExit: (event) {
              setState(() {
                _controller.forward();
              });
            },
            child: Lottie.asset(
              'assets/lottie/f5aNWknKKXO.json',
              controller: _controller,
              height: 460,
              width: 340,
              repeat: true,
              onLoaded: (p0) {
                _controller
                  ..duration = p0.duration
                  ..forward()
                  ..addStatusListener((status) {
                    if (status == AnimationStatus.completed) {
                      _controller.forward(from: 0);
                    }
                  });
              },
            ),
          ),
        ),
      ],
    );
  }
}
