import 'package:flutter/material.dart';
import 'package:food_app_ui/core/constants.dart';

class DetailsHeader extends StatelessWidget {
  final String image;
  const DetailsHeader({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    // Define a fixed height for the header
    double headerHeight = height(context) * 0.45;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        // The background container
        Container(
          width: width(context),
          height: headerHeight,
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(150),
              bottomRight: Radius.circular(150),
            ),
          ),
        ),
        // The content of the header
        SizedBox(
          width: width(context),
          height: headerHeight + 50, // Slightly increased height
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back, size: 30),
                      ),
                      const Icon(Icons.menu, size: 30),
                    ],
                  ),
                ),
                Expanded(
                  child: Hero(
                    tag: image,
                    child: Image.asset(imagePath + image, fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
