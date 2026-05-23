import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:doctor_app_advanced/core/networking/api_constants.dart';
import 'package:doctor_app_advanced/core/networking/dio_helper.dart';
import 'package:doctor_app_advanced/feauters/auth/data/models/register_request_model.dart';
import 'package:doctor_app_advanced/feauters/auth/data/models/response_user_model.dart';

class AuthRepo {
  Future<Either<String, ResponseUserModel>> register(
    RegisterRequestModel registerRequestModel,
  ) async {
    try{
      final response = await DioHelper.postData(
          endPoint: ApiConstants.registerEndPoint,
          data: registerRequestModel.toJson()
      );

      ResponseUserModel responseUserModel = ResponseUserModel.fromJson(response.data);

      return right(responseUserModel);
    } on DioException catch(e){
      return left(e.response?.data["message"]?? "Something went wrong");
    }
    catch(e){
     return left(e.toString());
    }
  }
}
