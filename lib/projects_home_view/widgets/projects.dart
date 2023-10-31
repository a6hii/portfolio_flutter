import 'package:abhi_flutter_portfolio/projects_home_view/widgets/projects_phone.dart';
import 'package:abhi_flutter_portfolio/utils/open_functions.dart';
import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  const Project({
    Key? key,
    required this.context,
    required this.projectName,
    //required this.imageAssetUrl,
    required this.projectDetail,
    required this.technologies,
    required this.featuredProjectTitle,
    required this.projectExternalUrl,
    required this.isReversed,
    required this.isMobile,
    required this.bannerImages,
    required this.icon,
    this.appStoreLink,
    this.iconAppStore,
  }) : super(key: key);

  final BuildContext context;
  final String projectName;
  //final String imageAssetUrl;
  final List bannerImages;
  final String projectDetail;
  final String technologies;
  final String projectExternalUrl;
  final String featuredProjectTitle;
  final bool isReversed;
  final bool isMobile;
  final Widget icon;
  final String? appStoreLink;
  final Widget? iconAppStore;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: isMobile
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                  alignment:
                      isReversed ? Alignment.topRight : Alignment.topLeft,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.greenAccent,
                          blurRadius: 5,
                          blurStyle: BlurStyle.outer,
                          offset: Offset(5, 5),
                        ),
                      ],
                    ),
                    height: 300,
                    width: 600,
                    child: BannerWidget(bannerImages: bannerImages),
                  ),
                ),
                Align(
                  alignment:
                      isReversed ? Alignment.topLeft : Alignment.topRight,
                  child: SizedBox(
                    height: 300,
                    width: 400,
                    // color: Colors.purpleAccent,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Column(
                        crossAxisAlignment: isReversed
                            ? CrossAxisAlignment.start
                            : CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            featuredProjectTitle,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  color: Colors.white,
                                ),
                            textAlign:
                                isReversed ? TextAlign.end : TextAlign.start,
                          ),
                          Text(
                            projectName,
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                                  color: Colors.white,
                                ),
                            textAlign:
                                isReversed ? TextAlign.end : TextAlign.start,
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.all(10),
                            color: Colors.deepOrange,
                            child: Text(
                              projectDetail,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: isReversed
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: Text(
                              technologies,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                              textAlign:
                                  isReversed ? TextAlign.end : TextAlign.start,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: isReversed
                                ? MainAxisAlignment.end
                                : MainAxisAlignment.start,
                            children: [
                              if (appStoreLink != null && iconAppStore != null)
                                IconButton(
                                  onPressed: () => appsLaunchGivenUrl(
                                    urlToLaunch: appStoreLink ?? '',
                                  ),
                                  icon: iconAppStore ??
                                      const Icon(
                                        Icons.done_outline,
                                        size: 0,
                                        color: Colors.transparent,
                                      ),
                                ),
                              IconButton(
                                onPressed: () => appsLaunchGivenUrl(
                                  urlToLaunch: projectExternalUrl,
                                ),
                                icon: icon,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          : Stack(children: [
              Align(
                alignment:
                    isReversed ? Alignment.centerRight : Alignment.centerLeft,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(0, 68, 137, 255),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.greenAccent,
                        blurRadius: 5,
                        blurStyle: BlurStyle.outer,
                        offset: Offset(5, 5),
                      ),
                    ],
                  ),
                  height: 300,
                  width: 600,
                  child: BannerWidget(bannerImages: bannerImages),
                ),
              ),
              Align(
                alignment:
                    isReversed ? Alignment.centerLeft : Alignment.centerRight,
                child: SizedBox(
                  height: 300,
                  width: 400,
                  // color: Colors.purpleAccent,
                  child: Column(
                    crossAxisAlignment: isReversed
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        featuredProjectTitle,
                        style:
                            Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  color: Colors.white,
                                ),
                      ),
                      Text(
                        projectName,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              color: Colors.white,
                            ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.all(10),
                        color: Colors.deepOrange,
                        child: Text(
                          projectDetail,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                      ),
                      Text(
                        technologies,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          if (appStoreLink != null && iconAppStore != null)
                            IconButton(
                              onPressed: () => appsLaunchGivenUrl(
                                urlToLaunch: appStoreLink ?? '',
                              ),
                              icon: iconAppStore ??
                                  const Icon(
                                    Icons.done_outline,
                                    size: 0,
                                    color: Colors.transparent,
                                  ),
                            ),
                          IconButton(
                            onPressed: () => appsLaunchGivenUrl(
                              urlToLaunch: projectExternalUrl,
                            ),
                            icon: icon,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ]),
    );
  }
}
