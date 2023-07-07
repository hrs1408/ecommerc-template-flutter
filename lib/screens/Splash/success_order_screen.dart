import 'package:flutter/material.dart';

import '../Master/main_screen.dart';

class SuccessOrderScreen extends StatefulWidget {
  const SuccessOrderScreen({super.key});

  @override
  State<SuccessOrderScreen> createState() => _SuccessOrderScreenState();
}

class _SuccessOrderScreenState extends State<SuccessOrderScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
          width: width,
          height: height,
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Image(
                  image: AssetImage('asset/success_order.png'),
                  width: 200,
                  height: 200,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Success!',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Your order will be delivered soon. Thank you for choosing our app!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                SizedBox(
                  height: height - 500,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const MainScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFDB3022),
                        minimumSize:
                            Size(MediaQuery.of(context).size.width, 50),
                        maximumSize:
                            Size(MediaQuery.of(context).size.width, 50),
                        shape: const StadiumBorder()),
                    child: const Text('CONTINUE SHOPPING')),
              ],
            ),
          )),
    )));
  }
}
