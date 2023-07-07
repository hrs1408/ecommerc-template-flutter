import 'package:ecommerce/components/rating_star_widget.dart';
import 'package:ecommerce/components/review_item.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ReviewProductScreen extends StatefulWidget {
  const ReviewProductScreen({super.key});

  @override
  State<ReviewProductScreen> createState() => _ReviewProductScreenState();
}

class _ReviewProductScreenState extends State<ReviewProductScreen> {
  bool isChecked = false;
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
              SizedBox(
                  height: MediaQuery.of(context).size.height - 72,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Rating & Reviews',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '4.3',
                                    style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '31 ratings',
                                    style: TextStyle(
                                        color: Colors.black26, fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      const RatingStar(
                                        rating: 5,
                                      ),
                                      LinearPercentIndicator(
                                        width: 150.0,
                                        lineHeight: 8.0,
                                        percent: 0.8,
                                        progressColor: Colors.red,
                                        barRadius: const Radius.circular(5),
                                      ),
                                      const Text(
                                        '12',
                                        style: TextStyle(
                                            color: Colors.black26,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const RatingStar(
                                        rating: 4,
                                      ),
                                      LinearPercentIndicator(
                                        width: 150.0,
                                        lineHeight: 8.0,
                                        percent: 0.5,
                                        progressColor: Colors.red,
                                        barRadius: const Radius.circular(5),
                                      ),
                                      const Text(
                                        '8',
                                        style: TextStyle(
                                            color: Colors.black26,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const RatingStar(
                                        rating: 3,
                                      ),
                                      LinearPercentIndicator(
                                        width: 150.0,
                                        lineHeight: 8.0,
                                        percent: 0.4,
                                        progressColor: Colors.red,
                                        barRadius: const Radius.circular(5),
                                      ),
                                      const Text(
                                        '7',
                                        style: TextStyle(
                                            color: Colors.black26,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const RatingStar(
                                        rating: 2,
                                      ),
                                      LinearPercentIndicator(
                                        width: 150.0,
                                        lineHeight: 8.0,
                                        percent: 0.2,
                                        progressColor: Colors.red,
                                        barRadius: const Radius.circular(5),
                                      ),
                                      const Text(
                                        '3',
                                        style: TextStyle(
                                            color: Colors.black26,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const RatingStar(
                                        rating: 1,
                                      ),
                                      LinearPercentIndicator(
                                        width: 150.0,
                                        lineHeight: 8.0,
                                        percent: 0.1,
                                        progressColor: Colors.red,
                                        barRadius: const Radius.circular(5),
                                      ),
                                      const Text(
                                        '1',
                                        style: TextStyle(
                                            color: Colors.black26,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                '8 Reviews',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    value: isChecked,
                                    shape: const CircleBorder(),
                                    fillColor: isChecked
                                        ? MaterialStateProperty.resolveWith(
                                            (states) => const Color(0xFFDB3022))
                                        : MaterialStateProperty.resolveWith(
                                            (states) =>
                                                const Color(0xFF000000)),
                                    onChanged: (value) {
                                      setState(() {
                                        isChecked = value!;
                                      });
                                    },
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        isChecked = !isChecked;
                                      });
                                    },
                                    child: const Text('With photo'),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const ReviewItem(),
                          const ReviewItem(),
                          const ReviewItem(),
                          const ReviewItem(),
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: const Color(0xFFDB3022),
          foregroundColor: Colors.black,
          onPressed: () {
            showModalBottomSheet<void>(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0)),
              ),
              isScrollControlled: true,
              context: context,
              builder: (BuildContext context) {
                return Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: SizedBox(
                      height: 450,
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                  'What is you rate?',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RatingStar(
                                      rating: rating,
                                      onRatingChanged: (rating) =>
                                          setState(() => this.rating = rating),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                    'Please share your opinion about product',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                                const SizedBox(
                                  height: 20,
                                ),
                                const TextField(
                                  maxLines: 4,
                                  minLines: 4,
                                  decoration: InputDecoration(
                                      labelText: 'Your review',
                                      border: OutlineInputBorder(),
                                      labelStyle:
                                          TextStyle(color: Colors.black),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.black))),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: const Column(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: Colors.red,
                                        child: Icon(Icons.camera_alt,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        'Add your photo',
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFDB3022),
                                    minimumSize: Size(
                                        MediaQuery.of(context).size.width, 50),
                                    maximumSize: Size(
                                        MediaQuery.of(context).size.width, 50),
                                    shape: const StadiumBorder()),
                                child: const Text('SEND REVIEW')),
                          )
                        ],
                      ),
                    ));
              },
            );
          },
          icon: const Icon(
            Icons.edit,
            color: Colors.white,
            size: 14,
          ),
          label: const Text(
            'Write a review',
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ));
  }
}
