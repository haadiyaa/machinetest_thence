import 'package:flutter/material.dart';
import 'package:machinetask_thence/core/constants/appconstants.dart';
import 'package:machinetask_thence/core/constants/dimensions.dart';

class AdWidget extends StatelessWidget {
  const AdWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          margin:
              const EdgeInsets.only(bottom: AppDimensions.borderRadiusMedium),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 220, 238, 255),
                Color.fromARGB(255, 255, 230, 207)
              ],
            ),
          ),
          height: 100,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Free shipping",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      const Text(
                        "on orders",
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w300),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromARGB(255, 252, 198, 132),
                        ),
                        child: const Text(" over \$100 ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                            ),),
                      )
                    ],
                  )
                ],
              ),
              const Spacer(
                flex: 4,
              )
            ],
          ),
        ),
        Positioned(
          top: -15,
          right: 20,
          child: Image.asset(
            AppConstants.adbanner,
            scale: 1,
          ),
        ),
      ],
    );
  }
}
