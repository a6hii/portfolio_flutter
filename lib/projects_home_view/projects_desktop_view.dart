import 'package:abhi_flutter_portfolio/firebase_services.dart';
import 'package:abhi_flutter_portfolio/projects_home_view/widgets/project_video.dart';
import 'package:abhi_flutter_portfolio/projects_home_view/widgets/projects.dart';
import 'package:abhi_flutter_portfolio/projects_home_view/widgets/projects_heading.dart';
import 'package:abhi_flutter_portfolio/projects_home_view/widgets/projects_phone.dart';
import 'package:abhi_flutter_portfolio/utils/config.dart';
import 'package:abhi_flutter_portfolio/utils/open_functions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ProjectsDesktopView extends StatefulWidget {
  const ProjectsDesktopView({
    Key? key,
  }) : super(key: key);

  @override
  State<ProjectsDesktopView> createState() => _ProjectsDesktopViewState();
}

class _ProjectsDesktopViewState extends State<ProjectsDesktopView> {
  final FirebaseService _service = FirebaseService();
  List projImg1 = [];
  List projImg2 = [];
  List projImg3 = [];
  late String projectVideo1;

  @override
  void initState() {
    getBanners1();
    getBanners2();
    getBanners3();
    getProjectVideo1();
    super.initState();
  }

  getBanners1() {
    return _service.projectBanner1.get().then((QuerySnapshot querySnapshot) {
      for (var doc in querySnapshot.docs) {
        setState(() {
          projImg1.add(doc['image']);
        });
      }
    });
  }

  getBanners2() {
    return _service.projectBanner2.get().then((QuerySnapshot querySnapshot) {
      for (var doc in querySnapshot.docs) {
        setState(() {
          projImg2.add(doc['image']);
        });
      }
    });
  }

  getBanners3() {
    return _service.projectBanner3.get().then((QuerySnapshot querySnapshot) {
      for (var doc in querySnapshot.docs) {
        setState(() {
          projImg3.add(doc['image']);
        });
      }
    });
  }

  getProjectVideo1() {
    return _service.projectVideo1.get().then((QuerySnapshot querySnapshot) {
      for (var doc in querySnapshot.docs) {
        setState(() {
          projectVideo1 = doc['video'];
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 1100,
        maxHeight: 2400,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: cDesktopVerticalPadding,
        horizontal: cDesktopHorizontalPadding,
      ),
      child: Column(
        children: [
          WorkHeading(context: context, title: 'Some things I built'),
          Project(
            context: context,
            projectName: projectFiesto,
            // imageAssetUrl: fiestoImg,
            projectDetail: fiestoDetails,
            technologies: fiestoTech,
            featuredProjectTitle: flutterProject,
            projectExternalUrl: fiestoUrl,
            isReversed: false,
            isMobile: false,
            bannerImages: projImg1,
          ),
          Project(
            context: context,
            projectName: projectFiesto,
            // imageAssetUrl: fiestoImg,
            projectDetail: fiestoDetails,
            technologies: fiestoTech,
            featuredProjectTitle: flutterProject,
            projectExternalUrl: fiestoUrl,
            isReversed: true,
            isMobile: false,
            bannerImages: projImg2,
          ),
          Project(
            context: context,
            projectName: projectFiesto,
            // imageAssetUrl: fiestoImg,
            projectDetail: fiestoDetails,
            technologies: fiestoTech,
            featuredProjectTitle: flutterProject,
            projectExternalUrl: fiestoUrl,
            isReversed: false,
            isMobile: false,
            bannerImages: projImg3,
          ),
          ProjectVideo(
            title: 'Project1111',
            context: context,
            projectName: projectFiesto,
            projectDetail: fiestoDetails,
            technologies: fiestoTech,
            projectExternalUrl: fiestoUrl,
            featuredProjectTitle: flutterProject,
            isReversed: true,
            isMobile: false,
            autoplay: false,
            looping: true,
            videoPlayerController: VideoPlayerController.network(projectVideo1),
          ),
          WorkHeading(
            context: context,
            title: 'Other note-worthy projects',
            titleFlex: 3,
            dividerFlex: 4,
          ),
          Expanded(
            flex: 6,
            child: Container(
              margin: const EdgeInsets.all(20),
              child: GridView.count(
                crossAxisSpacing: 10,
                childAspectRatio: 1.5,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: additionalProjects(context),
              ),
            ),
          )
        ],
      ),
    );
  }
}
