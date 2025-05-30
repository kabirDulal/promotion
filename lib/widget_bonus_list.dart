import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:promotion/model/bonus.dart';

class WidgetBonusList extends StatelessWidget {
  const WidgetBonusList({required this.bonuses, super.key});
  final Bonus bonuses;
  @override
  Widget build(context) {
    var amount = bonuses.amount;
    var arr = amount.toStringAsFixed(2).split('.');
    String firstAmount = arr[0];
    String secondAmount = arr[1];
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 6),
          height: 96,
          width: 82,
          decoration: BoxDecoration(
            color: const Color(0xFFE4E8F5),
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
              // RichText(
              //   text: TextSpan(
              //     children: [
              //       const TextSpan(

              //         text: "\$",
              //         style: TextStyle(
              //           fontSize: 16,
              //           fontWeight: FontWeight.w400,
              //           color: Color.fromRGBO(9, 58, 211, 1),
              //         ),
              //       ),
              //       TextSpan(
              //         text: firstAmount,
              //         style: const TextStyle(
              //           fontSize: 34,
              //           fontWeight: FontWeight.w400,
              //           color: Color.fromRGBO(9, 58, 211, 1),
              //         ),
              //       ),
              //       TextSpan(
              //         text: secondAmount,

              //         style: const TextStyle(
              //           fontSize: 10,
              //           fontWeight: FontWeight.w400,
              //           color: Color.fromRGBO(9, 58, 211, 1),

              //         ),
              //       ),
              //     ],
              //   ),
              // )
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(
                    width: 8,
                    height: 28,
                    child: Text(
                      '\$',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF093AD3),
                        fontSize: 16,
                        fontFamily: 'DezenProHeavy',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 45,
                    height: 30,
                    child: Text(
                      firstAmount,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0xFF093AD3),
                        fontSize: 34,
                        fontFamily: 'DezenProHeavy',
                        fontWeight: FontWeight.w400,
                        height: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 18,
                    height: 28,
                    child: Text(
                      ".$secondAmount",
                      style: const TextStyle(
                        color: Color(0xFF093AD3),
                        fontSize: 10,
                        fontFamily: 'DezenProHeavy',
                        fontWeight: FontWeight.w400,
                        height: 1,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 6,
              ),
              SizedBox(
                width: 70,
                height: 13,
                child: Text(
                  bonuses.type,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF23262B),
                    fontSize: 16,
                    fontFamily: 'DezenProHeavy',
                    fontWeight: FontWeight.w400,
                    height: 1,
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Expiry: ${bonuses.expiry} hrs',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color(0xFF23262B),
                  fontSize: 10,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 1,
                ),
              )
            ],
          ),
        ),
        if (bonuses.showSplitIcon)
          Positioned(
            top: 85,
            left: 18,
            child: Container(
              width: 53,
              height: 20,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(9, 58, 211, 1),
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  width: 2,
                  color: Colors.white,
                ),
              ),
              padding:
                  const EdgeInsets.only(top: 1, right: 5, bottom: 2, left: 5),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/icons/splitIcon.svg',
                    width: 9,
                    height: 9,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  const Text(
                    'Split',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
      ],
    );
  }
}
