import 'package:ecommerce/screens/Master/main_screen.dart';
import 'package:flutter/material.dart';

import 'category_kid.dart';
import 'category_men.dart';
import 'category_woman.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  int current = 0;
  Widget tabView = const CategoryWomenTab();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const MainScreen(
                              shopScreen: true,
                            )));
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
            const Text(
              'Categories',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        //Tabs category
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  border: current == 0
                      ? const Border(
                          bottom:
                              BorderSide(width: 1, color: Color(0xFFDB3022)))
                      : null),
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      current = 0;
                      tabView = const CategoryWomenTab();
                    });
                  },
                  child: const Text(
                    'Woman',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  )),
            )),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  border: current == 1
                      ? const Border(
                          bottom:
                              BorderSide(width: 1, color: Color(0xFFDB3022)))
                      : null),
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      current = 1;
                      tabView = const CategoryMenTab();
                    });
                  },
                  child: const Text(
                    'Men',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  )),
            )),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  border: current == 2
                      ? const Border(
                          bottom:
                              BorderSide(width: 1, color: Color(0xFFDB3022)))
                      : null),
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      current = 2;
                      tabView = const CategoryKidTab();
                    });
                  },
                  child: const Text(
                    'Kids',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  )),
            )),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height - 115,
          child: tabView,
        )
      ])),
    );
  }
}
