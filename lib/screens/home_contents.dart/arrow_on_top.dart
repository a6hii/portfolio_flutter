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

    return Positioned(
      bottom: 30,
      right: 10,
      child: GestureDetector(
        onTap: () {
          scrollProvider.scroll(0);
        },
        child: EntranceFader(
            offset: const Offset(0, 20),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.0)),
                height: 40.0,
                width: 40,
                child: const Icon(
                  Icons.arrow_drop_up,
                  color: Colors.redAccent,
                  size: 30,
                ))),
      ),
    );
  }
}

// class AnimatedRocket extends AnimatedWidget {
//   const AnimatedRocket({Key? key, required Animation<double> animation})
//       : super(key: key, listenable: animation);

//   @override
//   Widget build(BuildContext context) {
//     final Animation<double> animation = listenable as Animation<double>;
//     return Container(
//         margin: EdgeInsets.only(top: animation.value),
//         child: Image.asset('assets/images/rocket.png'));
//   }
// }

// class AnimatedSteam extends AnimatedWidget {
//   const AnimatedSteam({Key? key, required Animation<double> animation})
//       : super(key: key, listenable: animation);

//   @override
//   Widget build(BuildContext context) {
//     final Animation<double> animation = listenable as Animation<double>;
//     return Container(
//         margin: EdgeInsets.only(top: animation.value),
//         child: Image.asset('assets/images/launch_steam.png'));
//   }
// }
