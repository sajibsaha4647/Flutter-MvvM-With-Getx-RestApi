import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:trygetxproject/Utils/Routes/RoutesName.dart';

import 'Utils/Routes/Routes.dart';
import 'ViewModel/Bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding:ViewModelBinding(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      initialRoute: RouteNames.homeScreen,
      onGenerateRoute: Routes.generateRoute,
    );

  }
}
