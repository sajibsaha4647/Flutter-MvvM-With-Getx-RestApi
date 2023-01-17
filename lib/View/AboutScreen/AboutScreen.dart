import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../ViewModel/HomeViewModel/HomeViewModel.dart';
class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {

  final  homeViewModel = Get.put(HomeViewModel());



  @override
  Widget build(BuildContext context) {
    var dataitem = homeViewModel.responseData.data;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("About"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(child: ListView.builder(
              itemCount: homeViewModel.responseData.data.length == 0 ? 0 : homeViewModel.responseData.data.length,
              itemBuilder:(BuildContext context, int index) {
                return ListTile(
                  title:Text("${dataitem[index]["body"]}" ),
                );
              }))
        ],
      ),
    ));
  }
}
