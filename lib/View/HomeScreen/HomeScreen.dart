import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:trygetxproject/Utils/Routes/RoutesName.dart';
import 'package:trygetxproject/ViewModel/HomeViewModel/HomeViewModel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final  homeViewModel = Get.find<HomeViewModel>();

  @override
  Widget build(BuildContext context) {
    print(homeViewModel.responseData.data);
    var dataitem = homeViewModel.responseData.data;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          IconButton(onPressed: (){
            Get.toNamed(RouteNames.aboutScreen);
          }, icon: Icon(Icons.account_box_outlined)),
            Expanded(child: ListView.builder(
                itemCount: 5,
                itemBuilder:(BuildContext context, int index) {
                  return ListTile(
                    title:Text("${dataitem[index]["title"]}" ),
                  );
                }))
        ],
      ),
    ));
  }
}
