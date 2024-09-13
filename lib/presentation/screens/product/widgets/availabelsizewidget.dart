
import 'package:flutter/material.dart';
import 'package:machinetask_thence/core/constants/dimensions.dart';
import 'package:machinetask_thence/core/constants/textstyles.dart';
import 'package:machinetask_thence/data/models/plantmodel.dart';

class AvailableSizeWidget extends StatelessWidget {
  const AvailableSizeWidget({
    super.key,
    required this.plantsModel,
    required this.indexx,
  });

  final PlantsModel plantsModel;
  final int indexx;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: plantsModel.data[indexx].availableSize.length,
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
              color: const Color.fromARGB(255, 240, 238, 238),
            ),
            child: Center(child: Text('${plantsModel.data[indexx].availableSize[index].toString()} ${plantsModel.data[indexx].unit}',style: AppTextStyles.smallGrey,)),
          );
        },
      ),
    );
  }
}
