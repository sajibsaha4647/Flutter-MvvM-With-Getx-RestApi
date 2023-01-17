import 'package:flutter/cupertino.dart';
import 'package:trygetxproject/Utils/Routes/RoutesName.dart';
import 'package:trygetxproject/View/AboutScreen/AboutScreen.dart';

import '../../View/HomeScreen/HomeScreen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.homeScreen:
        return CupertinoPageRoute(
            builder: (BuildContext context) => HomeScreen());
      case RouteNames.aboutScreen:
        return CupertinoPageRoute(
            builder: (BuildContext context) => AboutScreen());
      default:
        return CupertinoPageRoute(
            builder: (BuildContext context) => HomeScreen());
    }
  }
}
