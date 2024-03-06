import 'package:flutter/material.dart';
import '../../constant/app_colors.dart';

class CustomPageHolder extends StatelessWidget {
   CustomPageHolder({Key? key,required this.title,required this.child,this.bottomNavBar,this.onLeadingTap,this.actions,this.floatingActionButton,this.showBackBtn}) : super(key: key);
  final Widget child;
  final String title;
   bool? showBackBtn=true;
  final Widget? bottomNavBar;
  final void Function()? onLeadingTap;
  final List<Widget>? actions;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> FocusScope.of(context).unfocus(),
      child: Scaffold(
        floatingActionButton: floatingActionButton,
        appBar: AppBar(
          leading: showBackBtn==true? InkWell(
            onTap: onLeadingTap ?? () {
                Navigator.pop(context);
                },
          ):null,
          actions: actions,
          centerTitle: true,
          titleTextStyle:const TextStyle(color: AppColors.headerBlack,fontWeight: FontWeight.w600,fontSize: 20),
          backgroundColor: AppColors.primaryColor,
          title: Text(title,style: const TextStyle(color: AppColors.whiteColor),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: child,
        ),
        bottomNavigationBar: bottomNavBar,
      ),

    );
  }
}
