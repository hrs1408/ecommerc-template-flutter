import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/components/product_item.dart';
import 'package:ecommerce/components/rating_star_widget.dart';
import 'package:ecommerce/screens/Product/review_product_screen.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  static const id = 'product_details_screen';

  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  final List<String> imgList = [
    'asset/product_details.png',
    'asset/product_details.png',
    'asset/product_details.png',
    'asset/product_details.png',
    'asset/product_details.png',
    'asset/product_details.png',
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 1.8;
    final listSize = ['Size', 'XS', 'S', 'M', 'L', 'XL'];
    final listColor = ['Black', 'White'];
    String sizeSelected = 'Size';
    String colorSelected = 'Black';
    double rating = 3.5;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context, true);
                    },
                    icon: const Icon(Icons.arrow_back_ios)),
                const Text(
                  'Short dress',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.share))
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 142,
              child: ListView(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      height: height,
                      viewportFraction: 1.0,
                      enlargeCenterPage: false,
                      // autoPlay: false,
                    ),
                    items: imgList
                        .map((item) => Center(
                                child: Image(
                              image: AssetImage(item),
                              fit: BoxFit.cover,
                              height: height,
                              width: MediaQuery.of(context).size.width,
                            )))
                        .toList(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black26)),
                              child: DropdownButton<String>(
                                value: sizeSelected,
                                onChanged: null,
                                items: listSize
                                    .map<DropdownMenuItem<String>>(
                                        (String value) =>
                                            DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            ))
                                    .toList(),
                                // add extra sugar..
                                icon: const Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  size: 16,
                                ),
                                iconSize: 42,
                                underline: const SizedBox(),
                              ),
                            )),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black26)),
                              child: DropdownButton<String>(
                                value: colorSelected,
                                onChanged: null,
                                items: listColor
                                    .map<DropdownMenuItem<String>>(
                                        (String value) =>
                                            DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            ))
                                    .toList(),
                                // add extra sugar..
                                icon: const Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  size: 16,
                                ),
                                iconSize: 42,
                                underline: const SizedBox(),
                              ),
                            )),
                            const SizedBox(
                              width: 10,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  shape: const CircleBorder(),
                                  padding: const EdgeInsets.all(14),
                                  backgroundColor: Colors.white),
                              child: const Icon(
                                Icons.favorite_border,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('H&M',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                const Text(
                                  'Short black dress',
                                  style: TextStyle(
                                      color: Colors.black26, fontSize: 12),
                                ),
                                RatingStar(rating: rating)
                              ],
                            ),
                            const Text(
                              '\$ 19.99',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(height: 15),
                        const Text(
                            'Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.')
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1, color: Colors.black26))),
                        child: TextButton(
                          onPressed: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Item Details',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black26,
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1, color: Colors.black26))),
                        child: TextButton(
                          onPressed: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shipping info',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black26,
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1, color: Colors.black26))),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) =>
                                        const ReviewProductScreen()));
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Reviews',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black26,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'You can also like this',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '12 items',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black26),
                            ),
                          ],
                        ),
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
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: SizedBox(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFDB3022),
                    minimumSize: Size(MediaQuery.of(context).size.width, 50),
                    maximumSize: Size(MediaQuery.of(context).size.width, 50),
                    shape: const StadiumBorder()),
                child: const Text('ADD TO CART')),
          ))),
    );
  }
}
