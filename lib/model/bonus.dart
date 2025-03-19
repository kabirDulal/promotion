import 'package:flutter/material.dart';

class Bonus {
  const Bonus(
      {required this.amount,
      required this.type,
      required this.expiry,
      required this.showSplitIcon});
  final double amount;
  final String type;
  final int expiry;
  final bool showSplitIcon;
}

class BoostIcons {
  const BoostIcons(
      {required this.horse,
      required this.greyHound,
      required this.harness,
      required this.sgm,
      required this.multi});
  final Icon horse;
  final Icon greyHound;
  final Icon harness;
  final Icon sgm;
  final Icon multi;
}

class BoostIcon {
  const BoostIcon(
      {required this.name, required this.boostNumber, required this.iconPath});
  final String name;
  final int boostNumber;
  final String iconPath;
}
