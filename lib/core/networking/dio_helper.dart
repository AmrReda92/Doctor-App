import 'package:dio/dio.dart';
import 'package:doctor_app_advanced/core/networking/api_constants.dart';

class DioHelper{
  static late Dio dio ;

  static init(){
    dio= Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        receiveDataWhenStatusError: true,
      )
    );
  }

  static Future<Response> postData({
    required String endPoint,
    required Map<String,dynamic> data,
    Map<String,dynamic>? query,}) async{
    return await dio.post(endPoint,data: FormData.fromMap(data),queryParameters: query);
  }
}