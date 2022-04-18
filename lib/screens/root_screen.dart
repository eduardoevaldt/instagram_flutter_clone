// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/home_screen.dart';
import '../theme/colors.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int screenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        shadowColor: Colors.grey.withOpacity(0.2),
        title: const Text(
          'Instagram',
          style: TextStyle(
            fontFamily: 'Billabong',
            color: black,
            fontSize: 37,
          ),
        ),
        actions: [
          IconButton(
            onPressed: null,
            icon: Container(
              width: 27,
              height: 27,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/upload.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: null,
            icon: Container(
              width: 27,
              height: 27,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/love.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: null,
            icon: Container(
              width: 27,
              height: 27,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/chat.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      body: getBody(),
      backgroundColor: white,
      bottomNavigationBar: getBottomNavigationBar(),
    );
  }

  Widget getBottomNavigationBar() {
    List bottomItems = [
      screenIndex == 0
          ? "assets/images/home_active.png"
          : "assets/images/home.png",
      screenIndex == 1
          ? "assets/images/search_active.png"
          : "assets/images/search.png",
      screenIndex == 2
          ? "assets/images/reels_black.png"
          : "assets/images/reels.png",
      screenIndex == 3
          ? "assets/images/shop_active.png"
          : "assets/images/shop.png",
      "assets/images/perfil_edu.jpg",
    ];
    return Container(
      width: double.infinity,
      height: 50,
      decoration: const BoxDecoration(color: white),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(bottomItems.length, (index) {
            return InkWell(
              onTap: () {
                selectedScreen(index);
              },
              child: index != 4
                  ? Image.asset(
                      bottomItems[index],
                      width: 26,
                    )
                  : Container(
                      width: screenIndex != 4 ? 26 : 27,
                      height: screenIndex != 4 ? 26 : 27,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: black,
                          width: screenIndex != 4 ? 0 : 1.3,
                        ),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(bottomItems[index]),
                            fit: BoxFit.cover),
                      ),
                    ),
            );
          }),
        ),
      ),
    );
  }

  Widget getBody() {
    List<Widget> screens = [
      HomeScreen(),
      const Center(
        child: Text(
          "Search",
          style: TextStyle(fontSize: 20, color: black),
        ),
      ),
      const Center(
        child: Text(
          "Reels",
          style: TextStyle(fontSize: 20, color: black),
        ),
      ),
      const Center(
        child: Text(
          "Shop",
          style: TextStyle(fontSize: 20, color: black),
        ),
      ),
      const Center(
        child: Text(
          "Profile",
          style: TextStyle(fontSize: 20, color: black),
        ),
      ),
    ];
    return IndexedStack(
      index: screenIndex,
      children: screens,
    );
  }

  selectedScreen(index) {
    setState(() {
      screenIndex = index;
    });
  }
}
