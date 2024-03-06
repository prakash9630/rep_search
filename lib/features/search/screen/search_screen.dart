import 'package:flutter/material.dart';
import 'package:gitsearch/components/custom_search_fields.dart';
import 'package:gitsearch/features/search/screen/searched_list_screen.dart';
import '../../../constant/app_colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Repo Search",
          style: TextStyle(color: AppColors.whiteColor),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomSearchField(
            hintText: "Search repository",
            onSubmitted: (val) {
              if (val!.isNotEmpty) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SearchedListScreen(
                            repoName: val,
                          )),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
