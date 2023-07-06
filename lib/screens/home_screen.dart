import 'package:ecommerce/components/product_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const id = 'home_screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Image(
                image: const AssetImage('asset/banner/banner.png'),
                width: MediaQuery.of(context).size.width,
                height: 500,
                fit: BoxFit.cover,
              ),
              Positioned(
                  bottom: 10,
                  left: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Fashion',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40),
                      ),
                      const Text(
                        'sale',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40),
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFDB3022),
                              shape: const StadiumBorder(),
                              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0)),
                          child: const Text('Check'))
                    ],
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 16, 10, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'New',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text('You ve never seen it before!')
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text('View all'),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 270,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Row(
                  children: [
                    ProductItem(
                        imageUrl: 'asset/product.png',
                        productName: 'T-shirt',
                        description: 'Topshop',
                        price: 10.3),
                    ProductItem(
                        imageUrl: 'asset/product.png',
                        productName: 'T-shirt',
                        description: 'Topshop',
                        price: 10.3),
                    ProductItem(
                        imageUrl: 'asset/product.png',
                        productName: 'T-shirt',
                        description: 'Topshop',
                        price: 10.3),
                    ProductItem(
                        imageUrl: 'asset/product.png',
                        productName: 'T-shirt',
                        description: 'Topshop',
                        price: 10.3),
                    ProductItem(
                        imageUrl: 'asset/product.png',
                        productName: 'T-shirt',
                        description: 'Topshop',
                        price: 10.3),
                    ProductItem(
                        imageUrl: 'asset/product.png',
                        productName: 'T-shirt',
                        description: 'Topshop',
                        price: 10.3),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sale',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text('Supper summer sale')
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text('View all'),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 290,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Row(
                  children: [
                    ProductItem(
                        imageUrl: 'asset/product_sale.png',
                        productName: 'Evening Dress',
                        description: 'Topshop',
                        price: 12),
                    ProductItem(
                        imageUrl: 'asset/product_sale.png',
                        productName: 'Evening Dress',
                        description: 'Topshop',
                        price: 12),
                    ProductItem(
                        imageUrl: 'asset/product_sale.png',
                        productName: 'Evening Dress',
                        description: 'Topshop',
                        price: 12),
                    ProductItem(
                        imageUrl: 'asset/product_sale.png',
                        productName: 'Evening Dress',
                        description: 'Topshop',
                        price: 12),
                    ProductItem(
                        imageUrl: 'asset/product_sale.png',
                        productName: 'Evening Dress',
                        description: 'Topshop',
                        price: 12),
                  ],
                )
              ],
            ),
          ),
          Stack(
            children: [
              Image(
                image: const AssetImage('asset/banner/banner_second.png'),
                width: MediaQuery.of(context).size.width,
                height: 375,
                fit: BoxFit.cover,
              ),
              const Positioned(
                  right: 10,
                  bottom: 10,
                  child: Text('New Collection',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: Colors.white)))
            ],
          ),
          Stack(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        height: MediaQuery.of(context).size.width / 2,
                        child: const Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Summer',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 28)),
                              Text('sale',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 28)),
                            ],
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Image(
                            image: const AssetImage(
                                'asset/banner/banner_left_bottom.png'),
                            width: MediaQuery.of(context).size.width / 2,
                            height: MediaQuery.of(context).size.width / 2,
                          ),
                          const Positioned(
                              bottom: 20,
                              left: 10,
                              child: Text('Black',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 28)))
                        ],
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Image(
                        image:
                            const AssetImage('asset/banner/banner_right.png'),
                        width: MediaQuery.of(context).size.width / 2,
                        height: MediaQuery.of(context).size.width,
                        fit: BoxFit.fill,
                      ),
                      const Positioned(
                          top: 130,
                          left: 50,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Men\'',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold)),
                              Text('hoodies',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold))
                            ],
                          ))
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
