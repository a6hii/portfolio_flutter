import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/shimmer/gf_shimmer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class Project extends StatelessWidget {
//   const Project({
//     Key? key,
//     required this.context,
//     required this.projectName,
//     required this.imageAssetUrls,
//     required this.projectDetail,
//     required this.technologies,
//     required this.featuredProjectTitle,
//     required this.projectExternalUrl,
//     required this.isReversed,
//   }) : super(key: key);

//   final BuildContext context;
//   final String projectName;
//   final List<String> imageAssetUrls;
//   final String projectDetail;
//   final String technologies;
//   final String projectExternalUrl;
//   final String featuredProjectTitle;
//   final bool isReversed;

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       flex: 6,
//       child: Container(
//         child: Column(
//           children: [ Align(
//               alignment:
//                   isReversed ? Alignment.centerRight : Alignment.centerLeft,
//               child: Container(
//                 decoration: const BoxDecoration(
//                   color: Colors.blueAccent,
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.greenAccent,
//                       blurRadius: 5,
//                       blurStyle: BlurStyle.outer,
//                       offset: Offset(5, 5),
//                     ),
//                   ],
//                 ),
//                 height: 400,
//                 width: 600,
//                 child: Opacity(
//                   opacity:  0.4 ,
//                   child: Container(
//                     color: Colors.black,
//                     child:CarouselSlider(items: [Image.asset('assets/1.png')], options: CarouselOptions(
//       height: 400,
//       aspectRatio: 16/9,
//       viewportFraction: 0.8,
//       initialPage: 0,
//       enableInfiniteScroll: true,
//       reverse: false,
//       autoPlay: true,
//       autoPlayInterval: Duration(seconds: 3),
//       autoPlayAnimationDuration: Duration(milliseconds: 800),
//       autoPlayCurve: Curves.fastOutSlowIn,
//       enlargeCenterPage: true,
//       onPageChanged: callbackFunction,
//       scrollDirection: Axis.horizontal,
//    ),),
//                   ),
//                 ),
//               ),
//             ),],
//         ),
//       ));
//   }
// }

class BannerWidget extends StatefulWidget {
  final List bannerImages;
  const BannerWidget({Key? key, required this.bannerImages}) : super(key: key);

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  int _pages = 0;

  //int c = 0;
  // final List<Widget> bannerImages = [
  //   Image.asset('assets/1.png'),
  //   Image.asset('assets/2.png'),
  //   Image.asset('assets/3.png'),
  //   Image.asset('assets/4.png')
  // ];

  // getBanners() {
  final _controller = PageController();

  //final store = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                color: Colors.black,
                height: 300,
                //width: MediaQuery.of(context).size.width,
                //color: Colors.white,

                child: PageView.builder(
                  allowImplicitScrolling: true,
                  itemCount: widget.bannerImages.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CarouselSlider.builder(
                        itemCount: widget.bannerImages.length,
                        itemBuilder: (BuildContext context, int itemIndex, _) {
                          return CachedNetworkImage(
                            fit: BoxFit.contain,
                            imageUrl: widget.bannerImages[itemIndex],
                            placeholder: (context, url) => GFShimmer(
                                showShimmerEffect: true,
                                mainColor:
                                    const Color.fromARGB(255, 20, 20, 20),
                                secondaryColor:
                                    const Color.fromARGB(255, 87, 87, 87),
                                child: Container(
                                  color: const Color.fromARGB(255, 26, 26, 26),
                                  height: 140,
                                  width: MediaQuery.of(context).size.width,
                                )),
                          );
                        },
                        options: CarouselOptions(
                          height: 500,
                          aspectRatio: 16 / 9,
                          viewportFraction: 0.8,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 3),
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          //enlargeCenterPage: true,
                          onPageChanged: (val, timed) {
                            setState(() {
                              _pages = val.toInt();
                            });
                          },
                          scrollDirection: Axis.horizontal,
                        ));
                    // return CachedNetworkImage(
                    //   fit: BoxFit.cover,
                    //   imageUrl: widget.bannerImages[index],
                    //   placeholder: (context, url) => GFShimmer(
                    //       showShimmerEffect: true,
                    //       mainColor: Colors.grey.shade500,
                    //       secondaryColor: Colors.grey.shade300,
                    //       child: Container(
                    //         color: Colors.grey.shade200,
                    //         height: 140,
                    //         width: MediaQuery.of(context).size.width,
                    //       )),
                    // );
                  },
                  controller: _controller,
                  // onPageChanged: ((val) {
                  //   setState(() {
                  //     _pages = val.toInt();
                  //   });
                  // }),
                ),
              ),
            ),
            widget.bannerImages.isEmpty == true
                ? Container()
                : Positioned.fill(
                    bottom: 18,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DotsIndicatorWidget(
                              pages: _pages, count: widget.bannerImages.length),
                        ],
                      ),
                    ),
                  ),
          ],
        ),

        // Text(
        //   'featuredProjectTitle',
        //   style: Theme.of(context).textTheme.headlineSmall?.copyWith(
        //         color: Colors.white,
        //       ),
        // ),
        // Text(
        //   'projectName',
        //   style: Theme.of(context).textTheme.headlineMedium!.copyWith(
        //         color: Colors.white,
        //       ),
        // ),
        // Container(
        //   padding: const EdgeInsets.all(5),
        //   margin: const EdgeInsets.all(10),
        //   color: Colors.deepOrange,
        //   child: Text(
        //     'projectDetail',
        //     maxLines: 3,
        //     overflow: TextOverflow.ellipsis,
        //     style: Theme.of(context).textTheme.bodyLarge?.copyWith(
        //           color: Colors.white,
        //         ),
        //   ),
        // ),
        // Text(
        //   'technologies',
        //   style: const TextStyle(
        //     color: Colors.white,
        //   ),
        // ),
        // IconButton(
        //   onPressed: () => appsLaunchGivenUrl(
        //     urlToLaunch: 'projectExternalUrl',
        //   ),
        //   icon: const FaIcon(
        //     FontAwesomeIcons.arrowUpRightFromSquare,
        //     color: Colors.white,
        //   ),
        // )
      ],
    );
  }
}

class DotsIndicatorWidget extends StatelessWidget {
  const DotsIndicatorWidget({
    Key? key,
    required int pages,
    count,
  })  : _pages = pages,
        c = count,
        super(key: key);

  final int _pages;
  final int c;

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: _pages,
      count: c,
      effect: const WormEffect(
          spacing: 4.0,
          activeDotColor: Colors.green,
          dotColor: Colors.grey,
          dotHeight: 8.0,
          dotWidth: 8.0,
          radius: 3,
          type: WormType.normal),
    );
  }
}
