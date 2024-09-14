import 'package:flutter/material.dart';
import 'package:machinetask_thence/core/constants/colors.dart';
import 'package:machinetask_thence/core/constants/textstyles.dart';
import 'package:machinetask_thence/data/models/plantmodel.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
    required this.datum,
    // required this.indexx,
  });

  final Datum datum;
  // final int indexx;

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
          datum.rating.toString(),
          style: AppTextStyles.rating,
        ),
      ],
    );
  }
}
