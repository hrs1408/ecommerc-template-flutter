import 'package:ecommerce/components/product_land_item.dart';
import 'package:ecommerce/screens/Shop/Category/category_screen.dart';
import 'package:flutter/material.dart';

class ShopScreen extends StatefulWidget {
  static const id = 'shop_screen';
  final String category;

  const ShopScreen({super.key, required this.category});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search))
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 6),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          widget.category,
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
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
              )
            ],
          ),
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height - 220,
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
            )))
      ],
    ));
  }
}
