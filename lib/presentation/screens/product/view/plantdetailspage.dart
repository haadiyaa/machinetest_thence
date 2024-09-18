import 'package:flutter/material.dart';
import 'package:machinetask_thence/core/constants/dimensions.dart';
import 'package:machinetask_thence/core/constants/textstyles.dart';
import 'package:machinetask_thence/data/models/plantmodel.dart';
import 'package:machinetask_thence/presentation/screens/product/widgets/availabelsizewidget.dart';
import 'package:machinetask_thence/presentation/screens/product/widgets/bottombuttons.dart';
import 'package:machinetask_thence/presentation/screens/product/widgets/ratingwidget.dart';

class PlantDetailsPage extends StatelessWidget {
  const PlantDetailsPage({
    super.key,
    this.datum,
    this.id,
  });

  final Datum? datum;
  final String? id;

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
                color: const Color.fromARGB(255, 237, 245, 255),
                image: DecorationImage(
                  image: NetworkImage(datum!.imageUrl),
                ),
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
                            datum!.name,
                            style: AppTextStyles.header,
                          ),
                          Text("${datum!.price} \$"),
                        ],
                      ),
                      RatingWidget(
                        datum: datum!,
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
                      AvailableSizeWidget(
                        datum: datum!,
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
                      Text(
                        datum!.description,
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
