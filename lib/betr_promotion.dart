import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BetrPromotion extends StatelessWidget {
  const BetrPromotion({super.key});
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(9, 58, 211, 1),
        actions: [
          Container(
            //width: double.infinity,
            padding: const EdgeInsets.all(12),
            child: Row(
              // mainAxisSize: MainAxisSize.min,
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'assets/images/icons/Group4315.svg',
                ),
                const SizedBox(
                  width: 160,
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/images/icons/BetRIcons.svg'),
                ),
              ],
            ),
          )
        ],
      ),
      body: const Text('new app'),
    );
  }
}
