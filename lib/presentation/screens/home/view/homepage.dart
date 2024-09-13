import 'package:flutter/material.dart';
import 'package:machinetask_thence/core/constants/colors.dart';
import 'package:machinetask_thence/core/constants/dimensions.dart';
import 'package:machinetask_thence/core/constants/textstyles.dart';
import 'package:machinetask_thence/presentation/screens/product/view/plantdetailspage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'All plants',
          style: AppTextStyles.subHeader,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: AppColors.textColor,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: AppDimensions.paddingMedium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Houseplants',
                  style: AppTextStyles.header,
                ),
                const SizedBox(
                  height: AppDimensions.heightMedium,
                ),
                SizedBox(
                  height: 35,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
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
                        child: const Center(child: Text('data')),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              // separatorBuilder: (context,index)=>SizedBox(height: 0,),
              padding: const EdgeInsets.only(
                  top: AppDimensions.paddingLarge,
                  left: AppDimensions.paddingMedium,
                  right: AppDimensions.paddingMedium),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const PlantDetailsPage()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(
                      bottom: AppDimensions.heightMedium,
                    ),
                    // padding: const EdgeInsets.symmetric(
                    //     vertical: AppDimensions.paddingSmall),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(AppDimensions.borderRadiusSmall))),
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'data',
                                    style: AppTextStyles.subTileHeader,
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: AppColors.accentColor,size: 12,),
                                      Text(
                                        '4.5',
                                        style: AppTextStyles.rating,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text('data',style: AppTextStyles.smallGrey,),
                              SizedBox(height: 25,),
                              Text("6.5 \$  ")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
