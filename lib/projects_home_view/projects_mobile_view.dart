import 'package:abhi_flutter_portfolio/firebase_services.dart';
import 'package:abhi_flutter_portfolio/projects_home_view/widgets/project_video.dart';
import 'package:abhi_flutter_portfolio/projects_home_view/widgets/projects.dart';
import 'package:abhi_flutter_portfolio/projects_home_view/widgets/projects_heading.dart';
import 'package:abhi_flutter_portfolio/utils/config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:video_player/video_player.dart';

class ProjectsMobileView extends StatefulWidget {
  const ProjectsMobileView({
    Key? key,
  }) : super(key: key);

  @override
  State<ProjectsMobileView> createState() => _ProjectsMobileViewState();
}

class _ProjectsMobileViewState extends State<ProjectsMobileView> {
  final FirebaseService _service = FirebaseService();
  List projImg1 = [];
  List projImg2 = [];
  List projImg3 = [];
  List projImg4 = [];
  String projectVideo1 =
      'https://firebasestorage.googleapis.com/v0/b/abhi-flutter-portfolio.appspot.com/o/projectVideo1.mp4?alt=media&token=f2a01986-dbd6-4469-923d-504ae26fd3de';

  @override
  void initState() {
    getBanners1();
    getBanners2();
    getBanners3();
    getBanners4();
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

  getBanners4() {
    return _service.projectBanner4.get().then((QuerySnapshot querySnapshot) {
      for (var doc in querySnapshot.docs) {
        setState(() {
          projImg4.add(doc['image']);
        });
      }
    });
  }

  getProjectVideo1() async {
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
      height: 3400,
      padding: const EdgeInsets.all(cMobileDefaultPadding),
      child: Column(
        children: [
          WorkHeading(
            context: context,
            title: 'Some things I\'ve built',
            titleFlex: 0,
          ),
          const Divider(
            color: Colors.white,
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
          const SizedBox(
            height: 24,
          ),
          Project(
            context: context,
            projectName: 'Trigsy Partner',
            //imageAssetUrl: fiestoImg,
            projectDetail:
                'An app where professionals can list their services and manage deals and chats from customers.',
            technologies:
                'Flutter, Riverpod, GoogleMaps, Notifications, BackgroundServices, NodeJs, TypeScript, PostgreSQL',
            featuredProjectTitle: 'Published Flutter app',
            projectExternalUrl:
                'https://play.google.com/store/apps/details?id=com.trigsy.partner&hl=en-IN',
            icon: const FaIcon(
              FontAwesomeIcons.googlePlay,
              color: Colors.white,
              size: 40,
            ),
            isReversed: false,
            isMobile: true,
            bannerImages: projImg1,
          ),
          Project(
            context: context,
            projectName: 'Trigsy',
            //imageAssetUrl: fiestoImg,
            projectDetail:
                'Trigsy is the best solution for all my service needs. With a user-friendly app, I can easily find reliable professionals for any task.',
            technologies:
                'Flutter, Riverpod, GoogleMaps, Notifications, Hive, NodeJs, TypeScript, PostgreSQL',
            featuredProjectTitle: 'Published Flutter App',
            appStoreLink: 'https://apps.apple.com/in/app/trigsy/id6452193884',

            projectExternalUrl:
                'https://play.google.com/store/apps/details?id=com.trigsy.customer&hl=en-IN',

            icon: const FaIcon(
              FontAwesomeIcons.googlePlay,
              color: Colors.white,
              size: 40,
            ),
            iconAppStore: const FaIcon(
              FontAwesomeIcons.appStoreIos,
              color: Colors.white,
              size: 40,
            ),
            isReversed: true,
            isMobile: true,
            bannerImages: projImg2,
          ),
          Project(
            context: context,
            projectName: 'Fiesto',
            //imageAssetUrl: fiestoImg,
            projectDetail:
                'A venue booking app which uses google maps API and RazorPay API. Web admin panel made using HTML-CSS and JS.',
            technologies:
                'Flutter, Firebase Auth/Realtime Database/Dynamic links, HTML, JS..',
            featuredProjectTitle: 'Published Android app',
            projectExternalUrl:
                'https://play.google.com/store/apps/details?id=com.fiesto.restaurants',

            icon: const FaIcon(
              FontAwesomeIcons.googlePlay,
              color: Colors.white,
              size: 40,
            ),
            isReversed: false,
            isMobile: true,
            bannerImages: projImg3,
          ),
          Project(
            context: context,
            projectName: 'Music Player',
            //imageAssetUrl: fiestoImg,
            projectDetail:
                'An offline audio player for android and IOS created with Flutter using RxDart. Users can play audio files stored on the device, make playlists, add favourites and can change theme of the app.',
            technologies: 'Flutter, Hive, RxDart, Shared Preferences,...',
            featuredProjectTitle: 'Flutter Project',
            projectExternalUrl: 'www.github.com/a6hii/music_player_project',
            icon: const FaIcon(
              FontAwesomeIcons.github,
              color: Colors.white,
              size: 40,
            ),
            isReversed: true,
            isMobile: true,
            bannerImages: projImg4,
          ),
          ProjectVideo(
            context: context,
            title: 'Onboarding-Phone Auth-New User Sign UP',
            projectName: 'Onboarding-Phone Auth-New User Sign UP',
            projectDetail:
                'Animated Onboarding screens uses Fade Transitions & Ripple effect, Firebase Phone Authentication, Store User\'s information in Firestore Database. More Functionalities are to be added.',
            technologies: 'Flutter, Firebase, Bloc, Shared Preferences,...',
            projectExternalUrl: 'www.github.com/a6hii/phone_auth_using_bloc',
            featuredProjectTitle: 'Flutter Project',
            isReversed: false,
            isMobile: true,
            autoplay: false,
            looping: true,
            videoPlayerController:
                VideoPlayerController.networkUrl(Uri.parse(projectVideo1)),
          ),
          //const BannerWidget(),
          // WorkHeading(
          //   context: context,
          //   title: 'Other note-worthy projects',
          //   titleFlex: 3,
          //   dividerFlex: 4,
          // ),

          // Expanded(
          //   flex: 6,
          //   child: Container(
          //     margin: const EdgeInsets.all(20),
          //     child: ListView(
          //         children: additionalProjects(
          //       context,
          //     )),
          //   ),
          // )
        ],
      ),
    );
  }
}
