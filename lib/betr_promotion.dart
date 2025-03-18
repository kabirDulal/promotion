import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:promotion/widget_bonus_list.dart';
import 'package:promotion/model/bonus.dart';

class BetrPromotion extends StatefulWidget {
  const BetrPromotion({super.key});
  @override
  State<BetrPromotion> createState() {
    return _BetrPromotionState();
  }
}

class _BetrPromotionState extends State<BetrPromotion> {
  final List<Bonus> _bonusList = [
    const Bonus(amount: 40.00, type: "BONUS", expiry: 4),
    const Bonus(amount: 10.12, type: "BONUS", expiry: 6),
    const Bonus(amount: 20.00, type: "LOYALTY", expiry: 8),
    const Bonus(amount: 5.25, type: "BONUS", expiry: 2),
    const Bonus(amount: 30.12, type: "LOYALTY", expiry: 3)
  ];
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 74.2,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 22, top: 12),
          child: SvgPicture.asset(
            'assets/images/icons/Group4315.svg',
            // colorFilter: const ColorFilter.mode(
            //     Color.fromRGBO(9, 58, 211, 1), BlendMode.dst),
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
              width: double.infinity,
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color.fromRGBO(9, 58, 211, 1),
              ),
              child: Image.asset(
                'assets/images/spin.png',
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/icons/giftBox.svg',
                  height: 24,
                  width: 24,
                  colorFilter: const ColorFilter.mode(
                      Color.fromRGBO(35, 38, 43, 1), BlendMode.srcIn),
                ),
                const SizedBox(
                  width: 6,
                ),
                const Text(
                  'Bonus Bets',
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
                    SvgPicture.asset(
                      'assets/images/icons/Union.svg',
                    ),
                    const Text(
                      '\$150.00',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                        height: 1.50,
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
              height: 96,
              child: ListView.builder(
                scrollDirection: axisDirectionToAxis(AxisDirection.right),
                itemCount: _bonusList.length,
                itemBuilder: (context, index) {
                  return WidgetBonusList(bonuses: _bonusList[index]);
                },
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/icons/tokenIcon.svg',
                ),
                const SizedBox(
                  width: 6,
                ),
                const Text(
                  'Bet Tokens',
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
                      '8',
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
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 84,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(9, 58, 211, 1),
                          Color.fromRGBO(4, 23, 84, 1),
                        ],
                        begin: Alignment(-0.00, -0.00),
                        end: Alignment(1.00, 1.00),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/icons/whiteDiamondShapedIcon.svg',
                          height: 58,
                          width: 58,
                        ),
                        SvgPicture.asset(
                          'assets/images/icons/sportsIcon.svg',
                          height: 30,
                          width: 30,
                        ),
                        const Positioned(
                          bottom: 10,
                          child: SizedBox(
                            width: 80,
                            height: 18,
                            child: Text(
                              'SPORTS',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'DezenProHeavy',
                                fontWeight: FontWeight.w800,
                                height: 1,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Expanded(
                  child: Container(
                    height: 84,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(9, 58, 211, 1),
                          Color.fromRGBO(4, 23, 84, 1),
                        ],
                        begin: Alignment(-0.00, -0.00),
                        end: Alignment(1.00, 1.00),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/icons/whiteDiamondShapedIcon.svg',
                          height: 58,
                          width: 58,
                        ),
                        SvgPicture.asset(
                          'assets/images/icons/sportsIcon.svg',
                          height: 30,
                          width: 30,
                        ),
                        const Positioned(
                          bottom: 10,
                          child: SizedBox(
                            width: 80,
                            height: 18,
                            child: Text(
                              'RACING',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'DezenProHeavy',
                                fontWeight: FontWeight.w800,
                                height: 1,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 36,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/images/icons/boostIcon.svg',
                ),
                const SizedBox(
                  width: 6,
                ),
                const Text(
                  'Boosts',
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
                      '12',
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
          ],
        ),
      ),
    );
  }
}
