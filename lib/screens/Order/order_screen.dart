import 'package:ecommerce/components/order_item.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.search))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'My Orders',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: const StadiumBorder(),
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0)),
                        child: const Text('Delivered')),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: const StadiumBorder(),
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0)),
                        child: const Text(
                          'Processing',
                          style: TextStyle(color: Colors.black),
                        )),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: const StadiumBorder(),
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0)),
                        child: const Text('Cancelled',
                            style: TextStyle(color: Colors.black)))
                  ],
                ),
                Container(
                    height: MediaQuery.of(context).size.height - 188,
                    child: const SingleChildScrollView(
                      child: Column(
                        children: [
                          OrderItem(),
                          OrderItem(),
                          OrderItem(),
                          OrderItem(),
                          OrderItem(),
                          OrderItem(),
                          OrderItem(),
                          OrderItem(),
                          OrderItem(),
                          OrderItem(),
                          OrderItem(),
                          OrderItem(),
                        ],
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    ));
  }
}
