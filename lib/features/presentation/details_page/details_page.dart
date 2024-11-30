import 'package:flutter/material.dart';
import 'package:food_app_ui/features/domain/entities/food_model.dart';
import 'package:food_app_ui/features/presentation/details_page/widgets/details_header.dart';
import 'package:food_app_ui/features/presentation/details_page/widgets/detials_content.dart';

class DetailsPage extends StatelessWidget {
  final FoodModel food;
  const DetailsPage({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailsHeader(
            image: food.image,
          ),
          Expanded(
            child: DetialsContent(
              foodModel: food,
            ),
          ),
        ],
      ),
    );
  }
}
