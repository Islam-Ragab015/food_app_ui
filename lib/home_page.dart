import 'package:flutter/material.dart';
import 'package:food_app_ui/constants.dart';
import 'package:food_app_ui/widgets/app_header.dart';
import 'package:food_app_ui/widgets/search_area.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: width(context),
          height: height(context),
          child: const Column(
            children: [
              AppHeader(),
              SearchArea(),
            ],
          ),
        ),
      ),
    );
  }
}
