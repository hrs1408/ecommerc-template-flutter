import 'package:ecommerce/screens/Bag/bag_screen.dart';
import 'package:ecommerce/screens/Favorite/favorites_screen.dart';
import 'package:ecommerce/screens/Master/home_screen.dart';
import 'package:ecommerce/screens/Profile/profile_screen.dart';
import 'package:ecommerce/screens/Shop/shop_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static const id = 'main_screen';

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 0;
  final List<Widget> screens = [
    const ShopScreen(
      category: 'All Product',
    ),
    const BagScreen(),
    const FavoritesScreen(),
    const ProfileScreen()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = const HomeScreen();
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home_filled,
                            color: currentTab == 0
                                ? const Color(0xFFDB3022)
                                : Colors.black12,
                          ),
                          Text(
                            'Home',
                            style: TextStyle(
                                color: currentTab == 0
                                    ? const Color(0xFFDB3022)
                                    : Colors.black12,
                                fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = const ShopScreen(
                            category: 'All Product',
                          );
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.shopping_cart,
                            color: currentTab == 1
                                ? const Color(0xFFDB3022)
                                : Colors.black12,
                          ),
                          Text(
                            'Shop',
                            style: TextStyle(
                                color: currentTab == 1
                                    ? const Color(0xFFDB3022)
                                    : Colors.black12,
                                fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = const BagScreen();
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.shopping_bag,
                            color: currentTab == 2
                                ? const Color(0xFFDB3022)
                                : Colors.black12,
                          ),
                          Text(
                            'Bag',
                            style: TextStyle(
                                color: currentTab == 2
                                    ? const Color(0xFFDB3022)
                                    : Colors.black12,
                                fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = const FavoritesScreen();
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.favorite,
                            color: currentTab == 3
                                ? const Color(0xFFDB3022)
                                : Colors.black12,
                          ),
                          Text(
                            'Favorite',
                            style: TextStyle(
                                color: currentTab == 3
                                    ? const Color(0xFFDB3022)
                                    : Colors.black12,
                                fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = const ProfileScreen();
                          currentTab = 4;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            color: currentTab == 4
                                ? const Color(0xFFDB3022)
                                : Colors.black12,
                          ),
                          Text(
                            'Profile',
                            style: TextStyle(
                                color: currentTab == 4
                                    ? const Color(0xFFDB3022)
                                    : Colors.black12,
                                fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
