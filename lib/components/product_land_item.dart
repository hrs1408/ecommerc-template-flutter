import 'package:ecommerce/components/rating_star_widget.dart';
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
          const Expanded(
              flex: 1,
              child: Image(
                image: AssetImage('asset/product.png'),
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              )),
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Pullover',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const Text(
                          'Mango',
                          style: TextStyle(fontSize: 12, color: Colors.black26),
                        ),
                        RatingStar(
                          rating: rating,
                          onRatingChanged: (rating) =>
                              setState(() => this.rating = rating),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          '\$ 10',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_border),
                        ))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
