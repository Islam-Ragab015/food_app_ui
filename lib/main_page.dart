// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app_ui/features/presentation/cart/cart_screen.dart';
import 'package:food_app_ui/features/presentation/home/home.dart';
import 'package:food_app_ui/features/presentation/notification/notification_screen.dart';
import 'package:food_app_ui/features/presentation/profile/profile_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController controller = PageController(initialPage: 0);
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: [
          PageView(
            onPageChanged: (value) {
              setState(() {
                index = value;
              });
            },
            controller: controller,
            children: const [
              HomePage(),
              NotificationScreen(),
              CartScreen(),
              ProfileScreen()
            ],
          ),
          SafeArea(
              child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(50)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                      onTap: () {
                        if (index != 0) {
                          controller.jumpToPage(0);
                          index = 0;
                          setState(() {});
                        }
                      },
                      child: AnimatedScale(
                          duration: Duration(milliseconds: 200),
                          scale: index == 0 ? 1.5 : 1,
                          child: Icon(
                            Icons.home_filled,
                            color: index == 0
                                ? Theme.of(context).secondaryHeaderColor
                                : Colors.white.withOpacity(.5),
                          ))),
                  InkWell(
                      onTap: () {
                        if (index != 1) {
                          controller.jumpToPage(1);
                          index = 1;
                          setState(() {});
                        }
                      },
                      child: AnimatedScale(
                          duration: Duration(milliseconds: 200),
                          scale: index == 1 ? 1.5 : 1,
                          child: Icon(
                            Icons.favorite_border_rounded,
                            color: index == 1
                                ? Theme.of(context).secondaryHeaderColor
                                : Colors.white.withOpacity(.5),
                          ))),
                  InkWell(
                      onTap: () {
                        if (index != 2) {
                          controller.jumpToPage(2);
                          index = 2;
                          setState(() {});
                        }
                      },
                      child: AnimatedScale(
                          duration: Duration(milliseconds: 200),
                          scale: index == 2 ? 1.5 : 1,
                          child: Icon(
                            Icons.shopping_cart,
                            color: index == 2
                                ? Theme.of(context).secondaryHeaderColor
                                : Colors.white.withOpacity(.5),
                          ))),
                  InkWell(
                      onTap: () {
                        if (index != 3) {
                          controller.jumpToPage(3);
                          index = 3;
                          setState(() {});
                        }
                      },
                      child: AnimatedScale(
                          duration: Duration(milliseconds: 200),
                          scale: index == 3 ? 1.5 : 1,
                          child: Icon(
                            Icons.person_outline,
                            color: index == 3
                                ? Theme.of(context).secondaryHeaderColor
                                : Colors.white.withOpacity(.5),
                          ))),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
