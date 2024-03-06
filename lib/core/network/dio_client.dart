import 'package:dio/dio.dart';
import '../../constant/app_endpoints.dart';
import 'api_interceptor.dart';

final dio = Dio(
  BaseOptions(
     baseUrl: Endpoints.baseUrl,
    headers: <String, String>{
      "Content-Type": "application/json",
      "Accept": "application/json",
    },
    receiveDataWhenStatusError: true,
  ),
)..interceptors.add(ApiInterceptor());


