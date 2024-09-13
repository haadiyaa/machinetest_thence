
import 'package:flutter/material.dart';
import 'package:machinetask_thence/core/constants/colors.dart';
import 'package:machinetask_thence/core/constants/dimensions.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: Row(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimensions.heightSmall,
                vertical: AppDimensions.heightMedium,
              ),
              elevation: 0,
              backgroundColor: AppColors.borderColor,
              foregroundColor: AppColors.textColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  AppDimensions.borderRadiusSmall,
                ),
              ),
            ),
            onPressed: () {},
            child: const Icon(Icons.favorite_border),
          ),
          // const Spacer(),
          const SizedBox(
            width: AppDimensions.heightMedium,
          ),
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppDimensions.heightSmall, vertical: 18),
                elevation: 0,
                backgroundColor: AppColors.secondaryColor,
                foregroundColor: AppColors.textColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    AppDimensions.borderRadiusSmall,
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text('Add to cart'),
            ),
          ),
        ],
      ),
    );
  }
}
