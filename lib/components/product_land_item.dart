import 'package:ecommerce/components/rating_star_widget.dart';
import 'package:ecommerce/screens/Product/product_details_screen.dart';
import 'package:flutter/material.dart';

class ProductLandItem extends StatefulWidget {
  const ProductLandItem({super.key});

  @override
  State<ProductLandItem> createState() => _ProductLandItemState();
}

class _ProductLandItemState extends State<ProductLandItem> {
  double rating = 3.5;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 100,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const ProductDetailsScreen()));
            },
            child: const Expanded(
                flex: 1,
                child: Image(
                  image: AssetImage('asset/product.png'),
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                )),
          ),
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const ProductDetailsScreen()));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Pullover',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          const Text(
                            'Mango',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black26),
                          ),
                          RatingStar(rating: rating),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            '\$ 10',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                        bottom: 15,
                        right: 5,
                        child: IconButton(
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
                                                            BorderRadius
                                                                .circular(30.0),
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
                                                            BorderRadius
                                                                .circular(30.0),
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
                                                            BorderRadius
                                                                .circular(30.0),
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
                                                            BorderRadius
                                                                .circular(30.0),
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                        ))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
