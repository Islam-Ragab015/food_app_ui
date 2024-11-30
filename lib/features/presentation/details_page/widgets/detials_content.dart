import 'package:flutter/material.dart';
import 'package:food_app_ui/features/domain/entities/food_model.dart';

class DetialsContent extends StatelessWidget {
  final FoodModel foodModel;
  const DetialsContent({super.key, required this.foodModel});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // Wrap the entire layout with SingleChildScrollView
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  foodModel.name,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  "${foodModel.price}\$",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.red),
                ),
              ],
            ),
            Text(
              foodModel.category,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Details",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Theme.of(context).unselectedWidgetColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Reviews",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Text(
              foodModel.description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 15),
            // SafeArea and Row layout for add to cart and quantity control
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Theme.of(context).unselectedWidgetColor,
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      children: [
                        Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                color: Colors.red, shape: BoxShape.circle),
                            child: const Icon(Icons.add)),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text("1"),
                        ),
                        Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                color: Colors.red, shape: BoxShape.circle),
                            child: const Icon(Icons.remove)),
                      ],
                    ),
                  ),
                  InkWell(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "Add To Cart",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
