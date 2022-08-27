import 'package:abhi_flutter_portfolio/menu_items.dart';
import 'package:abhi_flutter_portfolio/screens/home_contents.dart/home_contents.dart';
import 'package:abhi_flutter_portfolio/utils/config.dart';
import 'package:abhi_flutter_portfolio/widgets/side_header_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController? _scrollController;

  bool _isScrollDown = false;

  bool _showAppBar = true;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController!.addListener(() {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Theme.of(context).primaryColorDark,
      drawer: Drawer(
        backgroundColor: Colors.black.withOpacity(0.8),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: ListView(children: navItems(context: context)),
      ),
      appBar: _showAppBar
          ? AppBar(
              leading: Builder(builder: (context) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: MaterialButton(
                    splashColor: Colors.greenAccent,
                    color: Colors.black.withOpacity(0.4),
                    shape: CircleBorder(),
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
              actions: MediaQuery.of(context).size.width <= cTabletMaxWidth
                  ? []
                  : navItems(context: context),
            )
          : null,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            SingleChildScrollView(
                controller: _scrollController, child: const HomeContentView()),
            if (MediaQuery.of(context).size.width >= cTabletMaxWidth)
              Align(
                alignment: Alignment.bottomLeft,
                child: SiderHeaderPage(
                  isEmailHeader: false,
                  alignment: Alignment.bottomLeft,
                  color: Theme.of(context).primaryColorDark,
                ),
              ),
            if (MediaQuery.of(context).size.width >= cTabletMaxWidth)
              Align(
                alignment: Alignment.bottomRight,
                child: SiderHeaderPage(
                  isEmailHeader: true,
                  alignment: Alignment.bottomRight,
                  color: Theme.of(context).primaryColorDark,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
