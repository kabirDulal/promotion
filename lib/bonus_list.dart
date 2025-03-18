import 'package:flutter/material.dart';
import 'package:promotion/model/bonus.dart';
import 'package:promotion/betr_promotion.dart';

class BonusList extends StatelessWidget {
  const BonusList({required this.bonuses, super.key});
  final List<Bonus> bonuses;
  @override
  Widget build(context) {
    var amount = 40.02;
    var arr = amount.toStringAsFixed(2).split('.');
    return Container(
      height: 96,
      width: 82,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(220, 232, 245, 1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          width: 2,
          color: const Color.fromRGBO(9, 58, 211, 1),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "\$",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(9, 58, 211, 1),
                  ),
                ),
                TextSpan(text: ''),
              ],
            ),
          )
        ],
      ),
    );
  }
}
