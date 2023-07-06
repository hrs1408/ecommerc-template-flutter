import 'package:ecommerce/components/category_item.dart';
import 'package:flutter/material.dart';

class CategoryMenTab extends StatefulWidget {
  const CategoryMenTab({super.key});

  @override
  State<CategoryMenTab> createState() => _CategoryMenTabState();
}

class _CategoryMenTabState extends State<CategoryMenTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: BoxDecoration(
                  color: const Color(0xFFDB3022),
                  borderRadius: BorderRadius.circular(8)),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SUMMER SALES',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 24),
                  ),
                  Text(
                    'Up to  50% off',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            const CategoryItem(name: 'New for men', imageUrl: 'asset/category.png'),
            const CategoryItem(name: 'New for men', imageUrl: 'asset/category.png'),
            const CategoryItem(name: 'New for men', imageUrl: 'asset/category.png'),
            const CategoryItem(name: 'New for men', imageUrl: 'asset/category.png'),
            const CategoryItem(name: 'New for men', imageUrl: 'asset/category.png'),
          ],
        ),
      ),
    );
  }
}
