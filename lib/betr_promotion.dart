import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BetrPromotion extends StatelessWidget {
  const BetrPromotion({super.key});
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(bottom: 22, top: 12),
          child: SvgPicture.asset(
            'assets/images/icons/Group4315.svg',
            height: 50.2,
            width: 351,
          ),
        ),
        backgroundColor: const Color.fromRGBO(9, 58, 211, 1),
        actions: [
          IconButton(
            padding: const EdgeInsets.only(bottom: 30, right: 12),
            onPressed: () {},
            icon: SvgPicture.asset('assets/images/icons/BetRIcons.svg'),
          ),
        ],
      ),
      body: const Text('new app'),
    );
  }
}
