
import 'package:get/get.dart';
import 'package:trygetxproject/ViewModel/HomeViewModel/HomeViewModel.dart';



class ViewModelBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<HomeViewModel>(HomeViewModel());
  }




}