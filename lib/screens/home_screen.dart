import 'package:abhi_flutter_portfolio/new/provider/drawer_provider.dart';
import 'package:abhi_flutter_portfolio/screens/home_contents.dart/arrow_on_top.dart';
import 'package:abhi_flutter_portfolio/screens/home_contents.dart/home_contents.dart';
import 'package:abhi_flutter_portfolio/screens/home_contents.dart/mobile_drawer.dart';
import 'package:abhi_flutter_portfolio/utils/config.dart';
import 'package:abhi_flutter_portfolio/widgets/side_header_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController? _scrollController;

  bool _isScrollDown = false;

  bool _showAppBar = true;
  double scrollPercentage = 0.0;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController!.addListener(() {
      _updateScrollPercentage();
      if (_scrollController!.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (!_isScrollDown) {
          setState(() {
            _isScrollDown = true;
            _showAppBar = false;
          });
        }
      }
      if (_scrollController!.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (_isScrollDown) {
          setState(() {
            _isScrollDown = false;
            _showAppBar = true;
          });
        }
      }
    });

    super.initState();
  }

  void _updateScrollPercentage() {
    if (_scrollController != null) {
      final maxExtent = _scrollController!.position.maxScrollExtent;
      final currentExtent = _scrollController!.position.pixels;

      setState(() {
        scrollPercentage = (currentExtent / maxExtent).clamp(0.0, 1.0);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);
    return Scaffold(
      key: drawerProvider.key,
      extendBodyBehindAppBar: true,
      backgroundColor: Theme.of(context).primaryColorDark,
      // drawer: Drawer(
      //   backgroundColor: Colors.black.withOpacity(0.8),
      //   shape: const RoundedRectangleBorder(
      //       borderRadius: BorderRadius.only(
      //           topRight: Radius.circular(20),
      //           bottomRight: Radius.circular(20))),
      //   child: ListView(children: navItems(context: context)),
      // ),
      drawer: const MobileDrawer(),
      appBar: _showAppBar
          ? AppBar(
              forceMaterialTransparency: true,
              leading: Builder(builder: (context) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: MaterialButton(
                    splashColor: Colors.greenAccent,
                    color: Colors.black.withOpacity(0.4),
                    shape: const CircleBorder(),
                    child: const Icon(Icons.menu_rounded),
                    onPressed: () => Scaffold.of(context).openDrawer(),
                  ),
                );
              }),
              toolbarHeight:
                  MediaQuery.of(context).size.width <= cMobileMaxWidth
                      ? 56
                      : MediaQuery.of(context).size.width <= cTabletMaxWidth
                          ? 86
                          : 100,
              backgroundColor: Colors.transparent,
              elevation: 0.0,

              automaticallyImplyLeading:
                  MediaQuery.of(context).size.width <= cTabletMaxWidth,
              // title: Text(
              //   l10n.navTitle,
              //   style: const TextStyle(
              //     color: Colors.white,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              // actions: MediaQuery.of(context).size.width <= cTabletMaxWidth
              //     ? []
              //     : navItems(context: context),
            )
          : null,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            const HomeContentView(),
            const ArrowOnTop(),
            if (MediaQuery.sizeOf(context).width >= cTabletMaxWidth)
              Align(
                alignment: Alignment.bottomLeft,
                child: SiderHeaderPage(
                  isEmailHeader: false,
                  alignment: Alignment.bottomLeft,
                  // color: Theme.of(context).primaryColorDark,
                  scrollPercentage: scrollPercentage,
                  calculateScrollIndicatorColor: const Color(0xFF69F0AE),
                ),
              ),
            if (MediaQuery.sizeOf(context).width >= cTabletMaxWidth)
              Align(
                alignment: Alignment.bottomRight,
                child: SiderHeaderPage(
                  isEmailHeader: true,
                  alignment: Alignment.bottomRight,
                  // color: Theme.of(context).primaryColorDark,
                  scrollPercentage: scrollPercentage,
                  calculateScrollIndicatorColor: const Color(0xFF69F0AE),
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    if (_scrollController != null) {
      _scrollController!.removeListener(_updateScrollPercentage);
    }
    super.dispose();
  }
}
