import 'package:flutter/material.dart';
import 'package:machinetask_thence/core/constants/colors.dart';
import 'package:machinetask_thence/core/constants/dimensions.dart';
import 'package:machinetask_thence/core/constants/textstyles.dart';
import 'package:machinetask_thence/data/models/plantmodel.dart';
import 'package:machinetask_thence/presentation/screens/product/widgets/availabelsizewidget.dart';
import 'package:machinetask_thence/presentation/screens/product/widgets/bottombuttons.dart';
import 'package:machinetask_thence/presentation/screens/product/widgets/ratingwidget.dart';

class PlantDetailsPage extends StatelessWidget {
  const PlantDetailsPage({super.key, required this.plantsModel, required this.indexx});

  final PlantsModel plantsModel;
  final int indexx;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(AppDimensions.heightMedium),
        child: BottomButtons(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: size.width,
              height: size.height * 0.4,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(
                    AppDimensions.borderRadiusLarge,
                  ),
                  bottomRight: Radius.circular(
                    AppDimensions.borderRadiusLarge,
                  ),
                ),
                color: (indexx+1)%2!=0?const Color.fromARGB(255, 237, 245, 255):const Color.fromARGB(255, 246, 233, 252),
                image: DecorationImage(image: NetworkImage(plantsModel.data[indexx].imageUrl))
              ),
              
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: AppDimensions.paddingLarge,
                  horizontal: AppDimensions.paddingMedium),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            plantsModel.data[indexx].name,
                            style: AppTextStyles.header,
                          ),
                          Text("${plantsModel.data[indexx].price} \$"),
                        ],
                      ),
                      RatingWidget(plantsModel: plantsModel, indexx: indexx),
                      const SizedBox(
                        height: AppDimensions.heightMedium,
                      ),
                      const Text(
                        'Choose size',
                        style: AppTextStyles.subTileHeader,
                      ),
                      const SizedBox(
                        height: AppDimensions.heightSmall,
                      ),
                      AvailableSizeWidget(plantsModel: plantsModel, indexx: indexx),
                      const SizedBox(
                        height: AppDimensions.heightMedium,
                      ),
                      const Text(
                        'Description',
                        style: AppTextStyles.subTileHeader,
                      ),
                      const SizedBox(
                        height: AppDimensions.heightSmall,
                      ),
                      Text(
                        plantsModel.data[indexx].description,
                        style: AppTextStyles.smallGrey,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
