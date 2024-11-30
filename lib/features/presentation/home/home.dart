// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app_ui/core/constants.dart';
import 'package:food_app_ui/features/presentation/home/widgets/app_header.dart';
import 'package:food_app_ui/features/presentation/home/widgets/categories_part.dart';
import 'package:food_app_ui/features/presentation/home/widgets/popular_section.dart';
import 'package:food_app_ui/features/presentation/home/widgets/search_area.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width(context),
      height: height(context),
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              AppHeader(),
              SearchArea(),
              CategoriesPart(),
              PopularSection(),
            ],
          ),
        ),
      ),
    );
  }
}
