import 'package:flutter/material.dart';
import 'package:food_app_ui/core/constants.dart';

class CategoriesPart extends StatefulWidget {
  const CategoriesPart({super.key});

  @override
  State<CategoriesPart> createState() => _CategoriesPartState();
}

class _CategoriesPartState extends State<CategoriesPart> {
  String selected = categories[0];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categories
            .map(
              (e) => InkWell(
                onTap: () {
                  setState(() {
                    selected = e;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  constraints: BoxConstraints(minWidth: width(context) * .2),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: selected == e
                          ? Colors.red
                          : Theme.of(context).unselectedWidgetColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    e,
                    style: TextStyle(
                        color: selected == e
                            ? Colors.white
                            : Theme.of(context).textTheme.bodyLarge!.color),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

List categories = ["All", "Pizza", "Burger", "Sandwiches"];
