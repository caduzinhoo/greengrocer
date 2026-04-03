import 'package:flutter/material.dart';
import 'package:greengrocer/src/pages/common_widgets/app_name_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       child: AppNameWidget(
        greenTitleColor: Colors.white,
        textSize: 40,
       ),
    );
  }
}