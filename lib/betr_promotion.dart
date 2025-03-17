import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BetrPromotion extends StatelessWidget {
  const BetrPromotion({super.key});
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(1, 9, 58, 211),
        actions: [
          const Padding(padding: EdgeInsets.all(12)),
          Row(
            children: [
              SvgPicture.asset('assets/images/icons/Group4315.svg'),
              //const Spacer(),
              SvgPicture.asset('assets/images/icons/BetRIcons.svg'),
            ],
          )
        ],
      ),
      body: const Text('new app'),
    );
  }
}
