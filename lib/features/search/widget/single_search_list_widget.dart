import 'package:flutter/material.dart';
import 'package:gitsearch/features/list_detail/screen/list_detail_screen.dart';
import '../model/repo_list_model.dart';

class SingSearchListWidget extends StatelessWidget {
  const SingSearchListWidget({Key? key,this.repoName,required this.index,required this.item}) : super(key: key);
  final String? repoName;
  final int index;
  final Items item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>  ListDetailScreen(item: item,
              )),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
              color: Colors.white30
        ),
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("${(index+1).toString()} .",style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
            const SizedBox(width: 5,),
            Expanded(child: Text(repoName??"",style: const TextStyle(fontSize:18,fontWeight: FontWeight.w400),))
          ],
        ),
      ),
    );
  }
}
