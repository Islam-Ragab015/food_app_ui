import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app_ui/core/app_bloc/app_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<AppBloc>();
    return Center(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Theme.of(context).unselectedWidgetColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Enable Dark Mode",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  BlocBuilder<AppBloc, AppState>(builder: (context, state) {
                    return Switch(
                        value: bloc.theme == "dark",
                        activeColor: Colors.red,
                        // focusColor: Colors.red,
                        onChanged: (val) {
                          bloc.add(ThemEvent(them: val ? "dark" : "light"));
                        });
                  })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
