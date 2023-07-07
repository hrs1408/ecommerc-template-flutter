import 'package:ecommerce/components/rating_star_widget.dart';
import 'package:flutter/material.dart';

class ReviewItem extends StatefulWidget {
  const ReviewItem({super.key});

  @override
  State<ReviewItem> createState() => _ReviewItemState();
}

class _ReviewItemState extends State<ReviewItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.8),
                            spreadRadius: 1,
                            blurRadius: 4,
                            offset: const Offset(
                                0, 1), // changes position of shadow
                          ),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Helene Moore',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RatingStar(
                                rating: 4,
                              ),
                              Text('June 5, 2023')
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                              'The dress is great! Very classy and comfortable. It fit perfectly! I\'m 57" and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn\'t recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well.'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: const Row(
                                    children: [
                                      Text(
                                        'Helpful',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black26),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Icon(
                                        Icons.back_hand,
                                        size: 12,
                                        color: Colors.black26,
                                      )
                                    ],
                                  ))
                            ],
                          )
                        ],
                      ),
                    )),
              ),
              const Positioned(
                  top: 0,
                  left: 0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('asset/product,png'),
                    child: Text('AH'),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
