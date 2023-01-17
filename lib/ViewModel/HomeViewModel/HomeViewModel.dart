

import 'package:get/get.dart';

import '../../Data/Response/ApiResponse.dart';
import '../../Repository/HomeRepository.dart';

class HomeViewModel extends GetxController{


  final _repository = HomeRepository();


  var responseData = ApiResponse.loading();
  setResponse(ApiResponse response) {
    responseData = response ;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    getApi();
  }

  Future<void> getApi() async {
    _repository.getApi().then((value) {
      print("success");
      setResponse(ApiResponse.completed(value));
    }).onError((error, stackTrace) {
      print("failed");
      print(error);
      setResponse(ApiResponse.error(error.toString()));
    });

  }

}