import 'package:flutter/material.dart';
import '../constant/app_colors.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({Key? key,required this.showLoading}) : super(key: key);
  final bool showLoading;

  @override
  Widget build(BuildContext context) {
    return showLoading? const SizedBox(
      height: 20,
      child: Center(
        child: CircularProgressIndicator(
          color: AppColors.primaryColor,
        ),
      ),
    ):const SizedBox.shrink();
  }
}
