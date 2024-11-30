import 'package:flutter/material.dart';
import 'package:food_app_ui/core/constants.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
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
                //color: Theme.of(context).iconTheme.color,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Choose",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: "Your Favourite",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            TextSpan(
              text: " Food",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.red),
            )
          ]))
        ],
      ),
    );
  }
}
