import 'package:ecommerce/components/rating_star_widget.dart';
import 'package:flutter/material.dart';

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
    return Container(
      margin: const EdgeInsets.only(left: 10),
      child: Column(
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
              RatingStar(
                rating: rating,
                onRatingChanged: (rating) =>
                    setState(() => this.rating = rating),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.productName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      widget.description,
                      style:
                          const TextStyle(fontSize: 12, color: Colors.black26),
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
    );
  }
}
