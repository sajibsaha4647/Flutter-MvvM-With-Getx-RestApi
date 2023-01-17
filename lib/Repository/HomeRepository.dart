import 'package:get/get.dart';

import '../Data/Network/BaseApiResponse.dart';
import '../Data/Network/NetworkService.dart';
import '../Resource/Apiservice.dart';

class HomeRepository extends GetConnect{

  BaseApiService baseApiServices = NetworkApiservice();

  //post api
  Future<dynamic>postApi(data)async{
    print(data);
    try{
      dynamic response = await baseApiServices.postPostApiResponse('${AppUrls.postsEndpoints}',data);
      return response  = response;
    }catch(e){
      throw e;
    }
  }

//get api
  Future getApi()async{
    try{
      dynamic response = await baseApiServices.getGetApiResponse('${AppUrls.postsEndpoints}');
      print("response");
      print(response);
      return response ;


    }catch(e){
      throw e;
    }
  }
}