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
            colorFilter: const ColorFilter.mode(
                Color.fromRGBO(9, 58, 211, 1), BlendMode.dst),
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
      body: Container(
        margin: const EdgeInsets.only(
          top: 18,
          left: 12,
          right: 12,
        ),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/icons/promoIcon.svg',
                ),
                const SizedBox(
                  width: 6,
                ),
                const Text(
                  'Exclusive Promotions',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    height: 1.50,
                    color: Color.fromRGBO(35, 38, 43, 1),
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Transform.rotate(
                      angle: 45 * 3.1415926535 / 180,
                      child: Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromRGBO(255, 177, 7, 1),
                        ),
                      ),
                    ),
                    const Text(
                      '2',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                        height: 1,
                        color: Color.fromRGBO(35, 38, 43, 1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              width: 351,
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color.fromRGBO(9, 58, 211, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
