import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gitsearch/features/search/model/repo_list_model.dart';
import '../../../model/form_status.dart';
import '../repo/repo_list_repo.dart';
import 'repo_list_state.dart';

final repoListNotifyProvider =
    StateNotifierProvider<RepoListNotifier, RepoListState>((ref) {
  return RepoListNotifier(ref);
});

class RepoListNotifier extends StateNotifier<RepoListState> {
  RepoListNotifier(this.ref) : super(RepoListState.initial());
  final Ref ref;
  RepoListModel? model;
  List<Items>? list = [];
  String? repoName = "";


  bool repoListNotify(ScrollEndNotification notification) {
    if (notification.metrics.pixels == notification.metrics.maxScrollExtent) {
      if (state.model!.totalCount! > list!.length) {
        getRepoList(repoName: repoName!);
      }
    }
    return true;
  }

  Future<void> getRepoList({required String repoName}) async {
    this.repoName = repoName;
    final request = await ref.read(repoListRepoProvider).repoLists(
          repo: repoName,
          pageNo: state.pageNo,
        );
    state = request.fold(
        (l) => state.copyWith(
            status: const FormStatus.error(), pageLoading: false), (r) {
      model = RepoListModel.fromJson(r);
      if(state.pageNo==1){
        list= model?.items??[];
      }else{
        list?.addAll(model?.items ?? []);
        return state.copyWith(pageLoading: true);
      }
        return state.copyWith(
            status: const FormStatus.success(),
            pageLoading: false,
            pageNo: state.pageNo+1,
            model: model,
            list: list);

    });
  }
}
