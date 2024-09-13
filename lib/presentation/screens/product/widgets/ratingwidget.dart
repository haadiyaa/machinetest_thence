import 'package:flutter/material.dart';
import 'package:machinetask_thence/core/constants/colors.dart';
import 'package:machinetask_thence/core/constants/textstyles.dart';
import 'package:machinetask_thence/data/models/plantmodel.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
    required this.plantsModel,
    required this.indexx,
  });

  final PlantsModel plantsModel;
  final int indexx;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: AppColors.accentColor,
          size: 14,
        ),
        const SizedBox(
          width: 2,
        ),
        Text(
          plantsModel.data[indexx].rating.toString(),
          style: AppTextStyles.rating,
        ),
      ],
    );
  }
}
