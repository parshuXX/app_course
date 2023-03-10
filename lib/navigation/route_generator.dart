import 'package:flutter/material.dart';
import 'package:http_app/screen/homepage.dart';
import 'package:http_app/screen/homepage_with_bloc.dart';
import 'package:http_app/screen/images_screen_with_bloc.dart';
import 'package:http_app/screen/strem_b_screen.dart';
import 'package:http_app/screen/value_l_screen.dart';

import '../screen/future_b_screen.dart';
import '../screen/images_screen.dart';

Route customRouteGenerator(RouteSettings settings) {
  final routeName = settings.name;

  switch (routeName) {
    case "/":
      return MaterialPageRoute(builder: (ctx) => Homepage());
    case "/images":
      return MaterialPageRoute(builder: (ctx) => ImagesScreen());
    case "images_bloc":
      return MaterialPageRoute(builder: (ctx) => ImageScreenWithBloc());
    case "/futureScreen":
      return MaterialPageRoute(builder: (ctx) => FutureBScreen());
    case "valueListen":
      return MaterialPageRoute(builder: (ctx) => ValueListenScreen());
    case "streamScreen":
      return MaterialPageRoute(builder: (ctx) => StreamBScreen());
    case "hompage_bloc":
      return MaterialPageRoute(builder: (ctx) => HomepageWithBloc());

    default:
      return MaterialPageRoute(builder: (ctx) => Homepage());
  }
}
