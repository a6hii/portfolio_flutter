import 'package:abhi_flutter_portfolio/new/entrance_fader.dart';
import 'package:abhi_flutter_portfolio/new/provider/scroll_provider.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class ArrowOnTop extends StatefulWidget {
  const ArrowOnTop({Key? key}) : super(key: key);

  @override
  ArrowOnTopState createState() => ArrowOnTopState();
}

class ArrowOnTopState extends State<ArrowOnTop> with TickerProviderStateMixin {
  late AnimationController rocketController, steamController;
  late Animation<double> rocketAnimation, steamAnimation;

  @override
  void initState() {
    // Rocket animation
    rocketController = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);

    final CurvedAnimation curve =
        CurvedAnimation(parent: rocketController, curve: Curves.easeInOut);

    rocketAnimation = Tween(begin: 30.0, end: 0.0).animate(curve);

    rocketAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        rocketController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        rocketController.forward();
      }
    });

    rocketController.forward();

    // Steam animation
    steamController = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);

    final CurvedAnimation curveSteam =
        CurvedAnimation(parent: steamController, curve: Curves.linear);

    steamAnimation = Tween(begin: 55.0, end: 78.0).animate(curveSteam);
    steamController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    rocketController.dispose();
    steamController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //final appProvider = Provider.of<AppProvider>(context);
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return GestureDetector(
      onTap: () {
        print("ONTAP scroll to top");
        try {
          scrollProvider.scroll(0);
        } catch (err, st) {
          print("ERR:: $err,\n st: $st");
        }
      },
      child: EntranceFader(
          offset: const Offset(0, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                  height: 200.0,
                  child: Stack(
                    children: <Widget>[
                      Container(
                          alignment: const Alignment(1.0, -1.0),
                          padding: const EdgeInsets.only(right: 106.0),
                          child: AnimatedSteam(
                            animation: steamAnimation,
                          )),
                      Container(
                        alignment: const Alignment(1.0, -1.0),
                        padding: const EdgeInsets.only(right: 85.0),
                        child: AnimatedRocket(
                          animation: rocketAnimation,
                        ),
                      ),
                      Container(
                          alignment: const Alignment(1.0, 1.0),
                          child: Image.asset(
                            'assets/images/launch_clouds.png',
                            fit: BoxFit.scaleDown,
                          )),
                    ],
                  ))
            ],
          )),
    );
  }
}

class AnimatedRocket extends AnimatedWidget {
  AnimatedRocket({Key? key, required Animation<double> animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable as Animation<double>;
    return Container(
        margin: EdgeInsets.only(top: animation.value),
        child: Image.asset('assets/images/rocket.png'));
  }
}

class AnimatedSteam extends AnimatedWidget {
  AnimatedSteam({Key? key, required Animation<double> animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable as Animation<double>;
    return Container(
        margin: EdgeInsets.only(top: animation.value),
        child: Image.asset('assets/images/launch_steam.png'));
  }
}
