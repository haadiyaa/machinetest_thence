import 'package:flutter/material.dart';
import 'package:machinetask_thence/core/constants/colors.dart';
import 'package:machinetask_thence/core/constants/dimensions.dart';
import 'package:machinetask_thence/core/constants/textstyles.dart';
import 'package:machinetask_thence/presentation/screens/product/widgets/bottombuttons.dart';

class PlantDetailsPage extends StatelessWidget {
  const PlantDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppDimensions.heightMedium),
        child: BottomButtons(),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: size.width,
              height: size.height * 0.4,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                      AppDimensions.borderRadiusLarge,
                    ),
                    bottomRight: Radius.circular(
                      AppDimensions.borderRadiusLarge,
                    ),
                  ),
                  color: AppColors.accentColor),
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
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'data',
                            style: AppTextStyles.header,
                          ),
                          Text('423'),
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 12,
                            color: AppColors.accentColor,
                          ),
                          Text(
                            '4.5',
                            style: AppTextStyles.rating,
                          ),
                        ],
                      ),
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
                      SizedBox(
                        height: 35,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
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
                                color: AppColors.borderColor,
                              ),
                              child: const Center(child: Text('25 cm')),
                            );
                          },
                        ),
                      ),
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
                      const Text(
                        'jhgfdsfghjkhgch',
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
