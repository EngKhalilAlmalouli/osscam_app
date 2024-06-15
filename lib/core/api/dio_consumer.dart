import 'package:dio/dio.dart';
import 'package:osscam_app/core/api/api_consumer.dart';
import 'package:osscam_app/core/api/api_interceptors.dart';
import 'package:osscam_app/core/api/end_points.dart';
import 'package:osscam_app/core/errors/error_model.dart';
import 'package:osscam_app/core/errors/exceptions.dart';

class DioConsumer extends ApiConsumer{
  final Dio dio;

  DioConsumer({required this.dio}){
    dio.options.baseUrl= EndPoint.baseUrl;
    dio.interceptors.add(ApiInterceptor());
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
    ));

  }

  @override
  Future delete(
    String patch, {
      dynamic? data,
       Map<String, dynamic>? quiryParameters,
       bool isFormData = false,
       }) async {
   try {
  final response = await dio.delete(
     patch,
     data: data,
     queryParameters: quiryParameters,
   );
   return response.data;
} on DioException catch (e) {
  handleDioExceptions(e);
}
  }

 

  @override
  Future get(
    String patch,{
      Object? data,
       Map<String, dynamic>? quiryParameters,

       }) async{
    try {
    final response = await dio.get(
      patch,
      data: data,
      queryParameters: quiryParameters
      );
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
      
    }
   
  }

  @override
  Future patch(String patch,{
    dynamic? data,
     Map<String, dynamic>? quiryParameters,
     bool isFormData = false,
     }) async{
        try {
    final response = await dio.patch(
      patch,
      data: isFormData?FormData.fromMap(data) : data,
      queryParameters: quiryParameters
      );
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
      
    }
  }

  @override
  Future post(
    String patch, {
    dynamic? data,
    Map<String, dynamic>? quiryParameters,
    bool isFormData = false,
    
    }) async{
        try {
    final response = await dio.post(
      patch,
      data: isFormData?FormData.fromMap(data) : data,
      queryParameters: quiryParameters
      );
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
      
    }
  }
 
}