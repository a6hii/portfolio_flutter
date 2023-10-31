
import 'package:abhi_flutter_portfolio/firebase_options.dart';
import 'package:abhi_flutter_portfolio/new/provider/drawer_provider.dart';
import 'package:abhi_flutter_portfolio/new/provider/scroll_provider.dart';

import 'package:abhi_flutter_portfolio/screens/home_screen.dart';
import 'package:abhi_flutter_portfolio/utils/experience_model.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //final firebaseServices = FirebaseServices();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DrawerProvider()),
        ChangeNotifierProvider(create: (_) => ScrollProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Portfolio',
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: const Color(0xFF00796B),
          brightness: Brightness.dark,
        ),
        home: const HomeScreen(),
        scrollBehavior: MyCustomScrollBehavior(),
      ),
    ),
  );
}
