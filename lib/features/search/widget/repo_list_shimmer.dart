

import 'package:flutter/material.dart';

import '../../../components/custom_shimmers.dart';

class RepoListShimmer extends StatelessWidget {
  const RepoListShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomShimmers.containerShimmer(height: 50),
      );
    });
  }
}
