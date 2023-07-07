import 'package:ecommerce/components/rating_star_widget.dart';
import 'package:flutter/material.dart';

import '../screens/Product/product_details_screen.dart';

class ProductItem extends StatefulWidget {
  final String imageUrl;
  final String productName;
  final String description;
  final double price;

  const ProductItem(
      {super.key,
      required this.imageUrl,
      required this.productName,
      required this.description,
      required this.price});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  double rating = 3.5;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (_) => const ProductDetailsScreen()));
      },
      child: Container(
          margin: const EdgeInsets.only(left: 10),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Image(
                        image: AssetImage(widget.imageUrl),
                        width: 150,
                      ),
                      Positioned(
                          top: 10,
                          left: 10,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                              child: Text(
                                'New',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RatingStar(rating: rating),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.productName,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              widget.description,
                              style: const TextStyle(
                                  fontSize: 12, color: Colors.black26),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text('\$${widget.price}')
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Row(
                    children: [
                      IconButton(
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
                                  height: 221,
                                  child: Column(
                                    children: [
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Text(
                                              'Select size',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 10, 20, 10),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                OutlinedButton(
                                                  onPressed: () {},
                                                  style: ButtonStyle(
                                                    shape: MaterialStateProperty
                                                        .all(
                                                            RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0),
                                                    )),
                                                  ),
                                                  child: const Text(
                                                    "XS",
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                                OutlinedButton(
                                                  onPressed: () {},
                                                  style: ButtonStyle(
                                                    shape: MaterialStateProperty
                                                        .all(
                                                            RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0),
                                                    )),
                                                  ),
                                                  child: const Text(
                                                    "S",
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                                OutlinedButton(
                                                  onPressed: () {},
                                                  style: ButtonStyle(
                                                    shape: MaterialStateProperty
                                                        .all(
                                                            RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0),
                                                    )),
                                                  ),
                                                  child: const Text(
                                                    "M",
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                                OutlinedButton(
                                                  onPressed: () {},
                                                  style: ButtonStyle(
                                                    shape: MaterialStateProperty
                                                        .all(
                                                            RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0),
                                                    )),
                                                  ),
                                                  child: const Text(
                                                    "L",
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        decoration: const BoxDecoration(
                                          border: Border(
                                              top: BorderSide(
                                                  width: 1,
                                                  color: Colors.black12),
                                              bottom: BorderSide(
                                                  width: 1,
                                                  color: Colors.black12)),
                                        ),
                                        child: TextButton(
                                          onPressed: () {},
                                          child: const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Size info',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                              Icon(
                                                Icons.arrow_forward_ios,
                                                color: Colors.black,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    const Color(0xFFDB3022),
                                                minimumSize: Size(
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width,
                                                    50),
                                                maximumSize: Size(
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width,
                                                    50),
                                                shape: const StadiumBorder()),
                                            child: const Text('ADD TO CART')),
                                      )
                                    ],
                                  ));
                            },
                          );
                        },
                        icon: const Icon(Icons.add_shopping_cart_outlined),
                      ),
                      IconButton(
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
                                  height: 221,
                                  child: Column(
                                    children: [
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Text(
                                              'Select size',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 10, 20, 10),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                OutlinedButton(
                                                  onPressed: () {},
                                                  style: ButtonStyle(
                                                    shape: MaterialStateProperty
                                                        .all(
                                                            RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0),
                                                    )),
                                                  ),
                                                  child: const Text(
                                                    "XS",
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                                OutlinedButton(
                                                  onPressed: () {},
                                                  style: ButtonStyle(
                                                    shape: MaterialStateProperty
                                                        .all(
                                                            RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0),
                                                    )),
                                                  ),
                                                  child: const Text(
                                                    "S",
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                                OutlinedButton(
                                                  onPressed: () {},
                                                  style: ButtonStyle(
                                                    shape: MaterialStateProperty
                                                        .all(
                                                            RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0),
                                                    )),
                                                  ),
                                                  child: const Text(
                                                    "M",
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                                OutlinedButton(
                                                  onPressed: () {},
                                                  style: ButtonStyle(
                                                    shape: MaterialStateProperty
                                                        .all(
                                                            RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0),
                                                    )),
                                                  ),
                                                  child: const Text(
                                                    "L",
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        decoration: const BoxDecoration(
                                          border: Border(
                                              top: BorderSide(
                                                  width: 1,
                                                  color: Colors.black12),
                                              bottom: BorderSide(
                                                  width: 1,
                                                  color: Colors.black12)),
                                        ),
                                        child: TextButton(
                                          onPressed: () {},
                                          child: const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Size info',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                              Icon(
                                                Icons.arrow_forward_ios,
                                                color: Colors.black,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    const Color(0xFFDB3022),
                                                minimumSize: Size(
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width,
                                                    50),
                                                maximumSize: Size(
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width,
                                                    50),
                                                shape: const StadiumBorder()),
                                            child:
                                                const Text('ADD TO FAVORITE')),
                                      )
                                    ],
                                  ));
                            },
                          );
                        },
                        icon: const Icon(Icons.favorite_border),
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}
