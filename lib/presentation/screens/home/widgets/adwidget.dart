import 'package:flutter/material.dart';
import 'package:machinetask_thence/core/constants/appconstants.dart';
import 'package:machinetask_thence/core/constants/dimensions.dart';

class AdWidget extends StatelessWidget {
  const AdWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppDimensions.borderRadiusMedium),
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
      width: MediaQuery.of(context).size.width * 0.8,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
                    style:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
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
                        )),
                  )
                ],
              )
            ],
          ),
          Image.asset(
            AppConstants.adbanner,
            scale: 1.1,
          ),
        ],
      ),
    );
  }
}
