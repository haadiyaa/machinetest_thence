import 'package:flutter/material.dart';
import 'package:machinetask_thence/core/constants/colors.dart';
import 'package:machinetask_thence/core/constants/dimensions.dart';
import 'package:machinetask_thence/core/constants/textstyles.dart';
import 'package:machinetask_thence/data/models/plantmodel.dart';
import 'package:machinetask_thence/presentation/screens/product/widgets/ratingwidget.dart';

class PlantListTile extends StatelessWidget {
  const PlantListTile({
    super.key,
    required this.size,
    required this.plantsModel,
    required this.index,
  });
  final int index;
  final Size size;
  final PlantsModel plantsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: AppDimensions.heightLarge,
      ),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
              Radius.circular(AppDimensions.borderRadiusSmall))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(AppDimensions.borderRadiusSmall),
                  color: (index + 1) % 2 != 0
                      ? const Color.fromARGB(255, 237, 245, 255)
                      : const Color.fromARGB(255, 246, 233, 252),
                ),
                height: size.height * 0.1,
                width: size.width * 0.3,
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppDimensions.borderRadiusSmall),
                    image: DecorationImage(
                      image: NetworkImage(
                        plantsModel.data[index].imageUrl,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: size.height * 0.15,
                  width: size.width * 0.3,
                ),
              )
            ],
          ),
          const SizedBox(
            width: AppDimensions.widthMedium,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      plantsModel.data[index].name,
                      style: AppTextStyles.subTileHeader,
                    ),
                    RatingWidget(plantsModel: plantsModel, indexx: index)
                  ],
                ),
                Text(
                  "${plantsModel.data[index].displaySize.toString()} ${plantsModel.data[index].unit}",
                  style: AppTextStyles.smallGrey,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text("${plantsModel.data[index].price} \$  ")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
