import 'package:abhi_flutter_portfolio/utils/open_functions.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:video_player/video_player.dart';

class ProjectVideo extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool looping;
  final bool autoplay;
  final String title;
  final BuildContext context;
  final String projectName;
  //final String imageAssetUrl;
  //final List bannerImages;
  final String projectDetail;
  final String technologies;
  final String projectExternalUrl;
  final String featuredProjectTitle;
  final bool isReversed;
  final bool isMobile;
  const ProjectVideo(
      {super.key,
      required this.title,
      required this.context,
      required this.projectName,
      required this.projectDetail,
      required this.technologies,
      required this.projectExternalUrl,
      required this.featuredProjectTitle,
      required this.isReversed,
      required this.isMobile,
      required this.videoPlayerController,
      required this.looping,
      required this.autoplay});

  @override
  State<ProjectVideo> createState() => _ProjectVideoState();
}

class _ProjectVideoState extends State<ProjectVideo> {
  //late CachedVideoPlayerController controller;
  late ChewieController controller;
  @override
  void initState() {
    controller = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      aspectRatio: 24 / 18,
      autoInitialize: true,
      autoPlay: widget.autoplay,
      looping: widget.looping,
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: const TextStyle(color: Colors.white),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: widget.isMobile
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                  alignment: widget.isReversed
                      ? Alignment.topRight
                      : Alignment.topLeft,
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
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        color: Colors.black,
                        height: 300,
                        child: AspectRatio(
                          aspectRatio: controller.aspectRatio!,
                          child: Chewie(
                            controller: controller,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: widget.isReversed
                      ? Alignment.topLeft
                      : Alignment.topRight,
                  child: SizedBox(
                    height: 240,
                    width: 400,
                    // color: Colors.purpleAccent,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Column(
                        crossAxisAlignment: widget.isReversed
                            ? CrossAxisAlignment.start
                            : CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            widget.featuredProjectTitle,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  color: Colors.white,
                                ),
                          ),
                          Text(
                            widget.projectName,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  color: Colors.white,
                                ),
                            textAlign: widget.isReversed
                                ? TextAlign.right
                                : TextAlign.end,
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            // margin: const EdgeInsets.all(8),
                            color: Colors.deepOrange,
                            child: Text(
                              widget.projectDetail,
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
                          Expanded(
                            child: Align(
                              alignment: widget.isReversed
                                  ? Alignment.centerRight
                                  : Alignment.centerLeft,
                              child: Text(
                                widget.technologies,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                                textAlign: widget.isReversed
                                    ? TextAlign.start
                                    : TextAlign.end,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: widget.isReversed
                                  ? Alignment.centerRight
                                  : Alignment.centerLeft,
                              child: IconButton(
                                onPressed: () => appsLaunchGivenUrl(
                                  urlToLaunch: widget.projectExternalUrl,
                                ),
                                icon: const FaIcon(
                                  FontAwesomeIcons.github,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                            ),
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
                alignment: widget.isReversed
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
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
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                          color: Colors.black,
                          height: 300,
                          child: AspectRatio(
                            aspectRatio: controller.aspectRatio!,
                            child: Chewie(
                              controller: controller,
                            ),
                          ))),
                ),
              ),
              Align(
                alignment: widget.isReversed
                    ? Alignment.centerLeft
                    : Alignment.centerRight,
                child: SizedBox(
                  height: 300,
                  width: 400,
                  // color: Colors.purpleAccent,
                  child: Column(
                    crossAxisAlignment: widget.isReversed
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.featuredProjectTitle,
                        style:
                            Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  color: Colors.white,
                                ),
                      ),
                      Text(
                        widget.projectName,
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  color: Colors.white,
                                ),
                        textAlign:
                            widget.isReversed ? TextAlign.start : TextAlign.end,
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.all(10),
                        color: Colors.deepOrange,
                        child: Text(
                          widget.projectDetail,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: widget.isReversed
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: Text(
                          widget.technologies,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          textAlign: widget.isReversed
                              ? TextAlign.start
                              : TextAlign.end,
                        ),
                      ),
                      Align(
                        alignment: widget.isReversed
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: IconButton(
                          onPressed: () => appsLaunchGivenUrl(
                            urlToLaunch: widget.projectExternalUrl,
                          ),
                          icon: const FaIcon(
                            FontAwesomeIcons.github,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ]),
    );
  }
}
