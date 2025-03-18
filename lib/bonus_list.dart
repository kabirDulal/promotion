import 'package:flutter/material.dart';
import 'package:promotion/model/bonus.dart';

class BonusList extends StatelessWidget {
  const BonusList({required this.bonuses, super.key});
  final List<Bonus> bonuses;
  @override
  Widget build(context) {
    return Container(
      height: 96,
      // child: ListView.builder(
      //           itemCount: _bonusList.length, itemBuilder: (context, index) {}),
    );
  }
}
