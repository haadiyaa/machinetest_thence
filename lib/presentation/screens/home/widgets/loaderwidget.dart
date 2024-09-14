import 'package:flutter/material.dart';
import 'package:machinetask_thence/core/constants/colors.dart';
import 'package:machinetask_thence/core/constants/dimensions.dart';
import 'package:machinetask_thence/core/constants/textstyles.dart';
import 'package:shimmer/shimmer.dart';

class LoaderWidget extends StatelessWidget {
  const LoaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(
            top: AppDimensions.paddingLarge,
            left: AppDimensions.paddingMedium,
            right: AppDimensions.paddingMedium),
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.only(
              bottom: AppDimensions.heightMedium,
            ),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                    Radius.circular(AppDimensions.borderRadiusSmall))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Shimmer.fromColors(
                  baseColor: AppColors.borderColor,
                  highlightColor: AppColors.cardColor,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          AppDimensions.borderRadiusSmall),
                      color: AppColors.greyColor,
                    ),
                    height: size.height * 0.13,
                    width: size.width * 0.3,
                  ),
                ),
                const SizedBox(
                  width: AppDimensions.widthMedium,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Shimmer.fromColors(
                        baseColor: AppColors.borderColor,
                        highlightColor: AppColors.cardColor,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                AppDimensions.borderRadiusSmall,
                              ),
                              color: AppColors.borderColor),
                          width: double.infinity,
                          child: const Text(
                            'data',
                            style: AppTextStyles.subTileHeader,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: AppDimensions.heightSmall,
                      ),
                      Shimmer.fromColors(
                        baseColor: AppColors.borderColor,
                        highlightColor: AppColors.cardColor,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              AppDimensions.borderRadiusSmall,
                            ),
                            color: AppColors.borderColor,
                          ),
                          width: 100,
                          child: const Text(
                            'data',
                            style: AppTextStyles.smallGrey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Shimmer.fromColors(
                        baseColor: AppColors.borderColor,
                        highlightColor: AppColors.cardColor,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              AppDimensions.borderRadiusSmall,
                            ),
                            color: AppColors.borderColor,
                          ),
                          child: const Text("6.5 \$  "),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
