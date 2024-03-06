import 'package:flutter/material.dart';
import 'package:gitsearch/features/search/screen/search_screen.dart';

class AppStarter extends StatelessWidget {
  const AppStarter({super.key});
  @override
  Widget build(BuildContext context) {
      return const MaterialApp(
        title: 'Git Search',
        debugShowCheckedModeBanner: false,
        home: SearchScreen(),
      );

  }
}
