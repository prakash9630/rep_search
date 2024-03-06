import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/network/dio_base.dart';
import '../../../core/network/dio_client.dart';


final repoListRepoProvider = Provider<RepoListRepo>((ref)=>RepoListRepo());

class RepoListRepo{
  Future<Either<Failure,dynamic>> repoLists({required String repo,required int pageNo}){
    String url="?q=$repo&page=$pageNo&per_page=25";
    return apiBase<dynamic>(
        dio.get(url), url: url);
  }
}