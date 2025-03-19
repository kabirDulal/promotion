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

class BoostIcon {
  const BoostIcon(
      {required this.name, required this.boostNumber, required this.iconPath});
  final String name;
  final int boostNumber;
  final String iconPath;
}
