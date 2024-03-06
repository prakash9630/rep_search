import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gitsearch/components/custom_page_holder.dart';
import '../../../constant/app_colors.dart';
import '../../search/model/repo_list_model.dart';

class ListDetailScreen extends StatelessWidget {
  const ListDetailScreen({Key? key,required this.item}) : super(key: key);
  final Items item;

  @override
  Widget build(BuildContext context) {
    return CustomPageHolder(
      title: 'Repository detail',
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
                color: Colors.white30
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipOval(
                child: CachedNetworkImage(
                  imageUrl:item.owner?.avatarUrl?? "",
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                  errorWidget: (context, url, error) {
                    return CircleAvatar(
                        backgroundColor: AppColors.primaryColor
                            .withOpacity(0.7),
                        radius: 50.0,
                        child:  const Icon(
                          Icons.person,
                          color: AppColors.whiteColor,
                          size: 40,
                        ));
                  },
                ),
              ),
              const SizedBox(height: 20,),
              Text(item.fullName??"",style: const TextStyle(fontWeight: FontWeight.w500),),
              const SizedBox(height: 10,),
              Text(item.name??"",style: const TextStyle(fontWeight: FontWeight.w400),),
              const SizedBox(height: 10,),
              Text("No of open issues : ${item.openIssuesCount}",style: const TextStyle(fontWeight: FontWeight.w400),),
              const SizedBox(height: 10,),
              Text("Default branch : ${item.defaultBranch}",style: const TextStyle(fontWeight: FontWeight.w400),)

            ],
          ),
        ),
      ),
    );
  }
}
