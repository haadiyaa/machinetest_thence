
import 'package:flutter/material.dart';
import 'package:machinetask_thence/core/constants/appconstants.dart';
import 'package:machinetask_thence/core/constants/colors.dart';
import 'package:machinetask_thence/core/constants/dimensions.dart';
import 'package:machinetask_thence/core/constants/textstyles.dart';

class FliterWdiget extends StatelessWidget {
  const FliterWdiget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: AppConstants.filterOptions.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDimensions.paddingMedium,
            ),
            margin: const EdgeInsets.only(
                right: AppDimensions.marginSmall),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                AppDimensions.borderRadiusSmall,
              ),
              color: const Color.fromARGB(255, 240, 240, 240),
            ),
            child: Center(
                child: Text(AppConstants.filterOptions[index],style: AppTextStyles.filterUnselected,)),
          );
        },
      ),
    );
  }
}
