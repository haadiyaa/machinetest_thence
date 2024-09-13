
import 'package:flutter/material.dart';
import 'package:machinetask_thence/core/constants/colors.dart';
import 'package:machinetask_thence/core/constants/dimensions.dart';
import 'package:machinetask_thence/core/constants/textstyles.dart';

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
                borderRadius: BorderRadius.all(Radius.circular(
                    AppDimensions.borderRadiusSmall))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        AppDimensions.borderRadiusSmall),
                    // image: DecorationImage(image: NetworkImage('url')),
                    color: AppColors.greyColor,
                  ),
                  height: size.height * 0.15,
                  width: size.width * 0.3,
                ),
                const SizedBox(
                  width: AppDimensions.widthMedium,
                ),
                const Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'data',
                            style: AppTextStyles.subTileHeader,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: AppColors.accentColor,
                                size: 12,
                              ),
                              Text(
                                '4.5',
                                style: AppTextStyles.rating,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        'data',
                        style: AppTextStyles.smallGrey,
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text("6.5 \$  ")
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
