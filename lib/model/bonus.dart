import 'package:flutter/material.dart';

class Bonus {
  const Bonus({required this.amount, required this.type, required this.expiry});
  final double amount;
  final String type;
  final int expiry;
}
