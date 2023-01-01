import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:start_app/navigation/route_generator.dart';
import 'package:start_app/screen/ig_post_screen.dart';
import 'package:start_app/screen/stack_screen.dart';

import 'navigation/routes.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      theme: ThemeData(primarySwatch: Colors.purple, textTheme: TextTheme()),
      initialRoute: Routes.spalshScreen,
      onGenerateRoute: customRouteGenerator,
    );
  }
}

class OurApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Our App",
      theme: ThemeData(primarySwatch: Colors.purple, textTheme: TextTheme()),
      home: IgHomeScreen(),
    ); // most important widget for the app
  }
}

// Stateless widget  
// Stateful widget



// MaterialApp

/// These 3 things are used only once in the app:
/// 1. main function
/// 2. runapp function
/// 3. MaterialApp widget
/// 
/// class instance= class object