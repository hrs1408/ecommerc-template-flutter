import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class TestComponentsScreen extends StatefulWidget {
  const TestComponentsScreen({super.key});

  @override
  State<TestComponentsScreen> createState() => _TestComponentsScreenState();
}

class _TestComponentsScreenState extends State<TestComponentsScreen> {
  String dropdownValue = 'FC Barcelona';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text('Test Components Screen')
      ),
    );
  }
}
