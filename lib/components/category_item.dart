import 'package:flutter/material.dart';

class CategoryItem extends StatefulWidget {
  final String name;
  final String imageUrl;

  const CategoryItem({
    super.key,
    required this.name,
    required this.imageUrl
  });

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: MediaQuery
          .of(context)
          .size
          .width,
      height: 100,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 1,
          blurRadius: 8,
          offset: const Offset(0, 1), // changes position of shadow
        ),
      ], borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              widget.name,
              style:
              const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          Image(image: AssetImage(widget.imageUrl))
        ],
      ),
    );
  }
}
