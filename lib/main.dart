import 'package:flutter/material.dart';
import 'package:trygetxproject/Utils/Routes/RoutesName.dart';

import 'Utils/Routes/Routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // You can use the library anywhere in the app even in theme
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      initialRoute: RouteNames.homeScreen,
      onGenerateRoute: Routes.generateRoute,
    );

  }
}
