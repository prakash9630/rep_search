import 'dart:convert';
import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../local_database/hive_data_source.dart';


class Failure {
  Failure({
    required this.statusCode,
    required this.message,
    required this.errorData,
  });
  int statusCode;
  String message;
  dynamic errorData;
}

Future<Either<Failure, dynamic>> apiBase<T>(
    Future<Response<dynamic>> apiCall,
{required String url}) async {
    const validStatusCode = <int>[200, 201];
    try {
      final response = await apiCall;
      dynamic cacheData;
      /// gives data from cache for 1 hour
      if (validStatusCode.contains(response.statusCode)) {
         /// replace cache after 1 hour
         final value = jsonEncode(response.data);
         var localData = await HiveDataSource().cacheData(value,link: url);
         cacheData=jsonDecode(localData);
         return Right(response.data);
       //}
      }

    }  on DioException catch (e) {
      return Left(Failure(
        statusCode: e.response!.statusCode!,
        message: 'Error',
        errorData: e.response?.data,
      ));
    } catch (e) {
      log(e.toString());

    }
    return Left(
      Failure(
        statusCode: 100,
        message: 'Something went wrong, please try again.',
        errorData: null,
      ),
    );
  }
