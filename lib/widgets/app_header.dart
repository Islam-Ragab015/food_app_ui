import 'package:flutter/material.dart';
import 'package:food_app_ui/constants.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "${imagePath}person.png",
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              const Icon(
                Icons.notifications_none_outlined,
                size: 30,
              )
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            "Choose",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          RichText(
            text: const TextSpan(
              text: "your ",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: "favorite ",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                  ),
                ),
                TextSpan(
                  text: "food",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
