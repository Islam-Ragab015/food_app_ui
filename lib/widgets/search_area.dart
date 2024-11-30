import 'package:flutter/material.dart';

class SearchArea extends StatelessWidget {
  const SearchArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: TextField(
                onChanged: (value) {
                  print('Search value: $value');
                },
                decoration: InputDecoration(
                  hintText: 'Search for products',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                )))
      ],
    );
  }
}
