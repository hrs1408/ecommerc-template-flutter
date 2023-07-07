import 'package:ecommerce/components/product_land_item.dart';
import 'package:ecommerce/screens/Shop/Category/category_screen.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search))
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Favorites',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  shape: const StadiumBorder(),
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 0, 20, 0)),
                              child: const Text('Summer')),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  shape: const StadiumBorder(),
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 0, 20, 0)),
                              child: const Text('T-shirt')),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  shape: const StadiumBorder(),
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 0, 20, 0)),
                              child: const Text('Shirt')),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  shape: const StadiumBorder(),
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 0, 20, 0)),
                              child: const Text('Pants')),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  shape: const StadiumBorder(),
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 0, 20, 0)),
                              child: const Text('Jeans')),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 6),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                elevation: null),
                            child: const Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.filter_list_outlined,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Filters',
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            )),
                        TextButton(
                            onPressed: () {
                              showModalBottomSheet<void>(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20.0),
                                      topLeft: Radius.circular(20.0)),
                                ),
                                context: context,
                                builder: (BuildContext context) {
                                  return SizedBox(
                                      height: 300,
                                      child: Column(
                                        children: [
                                          const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(top: 10),
                                                child: Text(
                                                  'Sort By',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                              )
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Column(
                                              children: [
                                                TextButton(
                                                    onPressed: () {},
                                                    child: const Row(
                                                      children: [
                                                        Text('Popular',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black))
                                                      ],
                                                    )),
                                                TextButton(
                                                    onPressed: () {},
                                                    child: const Row(
                                                      children: [
                                                        Text('Newest',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black))
                                                      ],
                                                    )),
                                                TextButton(
                                                    onPressed: () {},
                                                    child: const Row(
                                                      children: [
                                                        Text('Customer review',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black))
                                                      ],
                                                    )),
                                                TextButton(
                                                    onPressed: () {},
                                                    child: const Row(
                                                      children: [
                                                        Text(
                                                            'Price: lowest to hight',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black))
                                                      ],
                                                    )),
                                                TextButton(
                                                    onPressed: () {},
                                                    child: const Row(
                                                      children: [
                                                        Text(
                                                            'Price: highest to low',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black))
                                                      ],
                                                    )),
                                              ],
                                            ),
                                          )
                                        ],
                                      ));
                                },
                              );
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                elevation: null),
                            child: const Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.compare_arrows,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Price: lowerst to hight',
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            )),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const CategoryScreen()));
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                elevation: null),
                            child: const Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.category,
                                  color: Colors.black,
                                ),
                              ],
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height - 290,
          child: const SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Wrap(
                children: [
                  ProductLandItem(),
                  ProductLandItem(),
                  ProductLandItem(),
                  ProductLandItem(),
                  ProductLandItem(),
                  ProductLandItem(),
                  ProductLandItem(),
                  ProductLandItem(),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
