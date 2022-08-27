import 'package:abhi_flutter_portfolio/firebase_options.dart';

import 'package:abhi_flutter_portfolio/screens/home_screen.dart';

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
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF00796B),
        brightness: Brightness.dark,
      ),
      home: HomeScreen(),
    ),
  );
}
