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
    const Bonus(amount: 40.00, type: "BONUS", expiry: 4, showSplitIcon: true),
    const Bonus(amount: 10.12, type: "BONUS", expiry: 6, showSplitIcon: false),
    const Bonus(amount: 20.00, type: "LOYALTY", expiry: 8, showSplitIcon: true),
    const Bonus(amount: 5.25, type: "BONUS", expiry: 2, showSplitIcon: false),
    const Bonus(amount: 30.12, type: "LOYALTY", expiry: 3, showSplitIcon: false)
  ];
  final List<BoostIcon> boostIconsList = [
    const BoostIcon(
        name: "Horse",
        boostNumber: 3,
        iconPath: 'assets/images/icons/horseIconOutlined.svg'),
    const BoostIcon(
        name: "Greyhound",
        boostNumber: 4,
        iconPath: 'assets/images/icons/greyHoundIconOutlined.svg'),
    const BoostIcon(
        name: "Harness",
        boostNumber: 1,
        iconPath: 'assets/images/icons/harnessIconOutlined.svg'),
    const BoostIcon(
        name: "SGM",
        boostNumber: 1,
        iconPath: 'assets/images/icons/sgmIconOutlined.svg'),
    const BoostIcon(
        name: "Multi",
        boostNumber: 1,
        iconPath: 'assets/images/icons/multiIconOutlined.svg'),
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
            SizedBox(
              height: 107,
              child: ListView.builder(
                scrollDirection: axisDirectionToAxis(AxisDirection.right),
                itemCount: _bonusList.length,
                itemBuilder: (context, index) {
                  return WidgetBonusList(bonuses: _bonusList[index]);
                },
              ),
            ),
            const SizedBox(
              height: 28,
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
                        Positioned(
                          bottom: 10,
                          child: SizedBox(
                            width: 80,
                            height: 18,
                            child: Text(
                              'SPORTS',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'DezenProHeavy',
                                fontWeight: FontWeight.w400,
                                height: 1,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 5
                                  ..color = const Color.fromRGBO(9, 58, 211, 1),
                              ),
                            ),
                          ),
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
                                fontWeight: FontWeight.w400,
                                height: 1,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 68,
                          top: 16,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(132, 255, 229, 1),
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                    width: 2,
                                    color: const Color.fromRGBO(9, 58, 211, 1),
                                  ),
                                ),
                              ),
                              const Text(
                                "4",
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(9, 58, 211, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
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
                          'assets/images/icons/racingIcon.svg',
                          height: 30,
                          width: 30,
                        ),
                        Positioned(
                          bottom: 10,
                          child: SizedBox(
                            width: 80,
                            height: 18,
                            child: Text(
                              'RACING',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'DezenProHeavy',
                                fontWeight: FontWeight.w400,
                                height: 1,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 5
                                  ..color = const Color.fromRGBO(9, 58, 211, 1),
                              ),
                            ),
                          ),
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
                                fontWeight: FontWeight.w400,
                                height: 1,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 68,
                          top: 18,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(132, 255, 229, 1),
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                    width: 2,
                                    color: const Color.fromRGBO(9, 58, 211, 1),
                                  ),
                                ),
                              ),
                              const Text(
                                "4",
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(9, 58, 211, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
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
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 77,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: boostIconsList.length,
                  itemBuilder: (context, index) {
                    return SingleBoostWidget(boostIconsList[index]);
                  }),
            )
          ],
        ),
      ),
    );
  }

  Widget SingleBoostWidget(BoostIcon boostIcon) {
    return Container(
      height: 58,
      width: 77,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(228, 232, 245, 1),
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: const Color.fromRGBO(9, 58, 211, 1),
            width: 2,
          )),
      child: Text('${boostIcon.name}'),
    );
  }
}
