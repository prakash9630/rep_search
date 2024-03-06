import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gitsearch/features/search/model/repo_list_model.dart';
import '../../../core/network/dio_base.dart';
import '../../../model/form_status.dart';
part 'repo_list_state.freezed.dart';

@freezed
abstract class RepoListState with _$RepoListState{
  const factory RepoListState({
    required FormStatus status,
    required int pageNo,
    Failure? failure,
    bool? pageLoading,
    RepoListModel? model,
    List<Items>? list

})=_RepoListState;

  factory RepoListState.initial({
    FormStatus status= const FormStatus.initial(),
    int page=1

})=>RepoListState(status: status,pageNo: page);
}