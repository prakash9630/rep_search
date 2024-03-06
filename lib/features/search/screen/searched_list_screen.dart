import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gitsearch/components/custom_page_holder.dart';
import 'package:gitsearch/features/search/widget/repo_list_shimmer.dart';
import '../../../components/loading_view.dart';
import '../provider/repo_list_notifier.dart';
import '../widget/single_search_list_widget.dart';

class SearchedListScreen extends ConsumerStatefulWidget {
  const SearchedListScreen({Key? key,required this.repoName}) : super(key: key);
  final String repoName;

  @override
  ConsumerState<SearchedListScreen> createState() => _SearchedListScreenState();
}

class _SearchedListScreenState extends ConsumerState<SearchedListScreen> {
  int flag = 0;

  @override
  void didChangeDependencies() {
    if(flag==0){
      ref.read(repoListNotifyProvider.notifier).getRepoList(repoName: widget.repoName);
      setState(() {
        flag=1;
      });
    }
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    final repoNotifier=ref.read(repoListNotifyProvider.notifier);

  final repoListProv= ref.watch(repoListNotifyProvider);
    return CustomPageHolder(title: "Repo list",
        child: NotificationListener(
          onNotification: repoNotifier.repoListNotify,
          child: Container(
            child: repoListProv.status.maybeWhen(orElse:()=>const RepoListShimmer(),
            success: (){
              return SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    ListView.separated(
                      shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context,index){
                      return SingSearchListWidget(
                        repoName: repoListProv.list?[index].name,
                        index: index,
                        item: repoListProv.list![index],
                      );
                    }, separatorBuilder: (context,index){
                      return const Padding(padding: EdgeInsets.all(10));
                    }, itemCount:
                    repoListProv.list!.length),
                    const SizedBox(
                      height: 15,
                    ),
                     LoadingView(showLoading: repoListProv.pageLoading!,)
                  ]
                ),
              );
            }),
          ),
        ));
  }
}
