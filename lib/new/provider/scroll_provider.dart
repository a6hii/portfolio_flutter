import 'package:abhi_flutter_portfolio/new/app_dimensions.dart';
import 'package:flutter/cupertino.dart';

class ScrollProvider extends ChangeNotifier {
  final scrollController = ScrollController();
  double scrollPercentage = 0.0;
  bool showAppBar = true;

  ScrollController get controller => scrollController;

  scroll(int index) {
    double offset = index == 1
        ? 270
        : index == 2
            ? 255
            : index == 3
                ? 250
                : 245;
    controller.animateTo(
      AppDimensions.normalize(
        offset * index.toDouble(),
      ),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  scrollMobile(int index) {
    double offset = index == 1
        ? 580
        : index == 2
            ? 600
            : index == 3
                ? 1100
                : index == 4
                    ? 1200
                    : index == 5
                        ? 1400
                        : 290;
    controller.animateTo(
      AppDimensions.normalize(
        offset * index.toDouble(),
      ),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );

    scrollController.addListener(() {
      final maxScroll = scrollController.position.maxScrollExtent;
      final currentScroll = scrollController.position.pixels;
      scrollPercentage = currentScroll / maxScroll;
      if (scrollPercentage > 0.1) {
        showAppBar = false;
      } else {
        showAppBar = true;
      }
      notifyListeners();
    });
  }
}
