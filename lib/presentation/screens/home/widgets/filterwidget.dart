import 'package:flutter/material.dart';
import 'package:machinetask_thence/core/constants/appconstants.dart';
import 'package:machinetask_thence/core/constants/colors.dart';
import 'package:machinetask_thence/core/constants/dimensions.dart';
import 'package:machinetask_thence/core/constants/textstyles.dart';

class FilterWidiget extends StatefulWidget {
  FilterWidiget({
    super.key,
  });

  @override
  State<FilterWidiget> createState() => _FilterWidigetState();
}

class _FilterWidigetState extends State<FilterWidiget> {
  String selectedFilter='All';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: AppConstants.filterOptions.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){
              setState(() {
                selectedFilter=AppConstants.filterOptions[index];
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimensions.paddingMedium,
              ),
              margin: const EdgeInsets.only(
                  right: AppDimensions.marginSmall),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  AppDimensions.borderRadiusSmall,
                ),
                color: selectedFilter==AppConstants.filterOptions[index]?AppColors.secondaryColor: const Color.fromARGB(255, 240, 240, 240),
              ),
              child: Center(
                  child: Text(AppConstants.filterOptions[index],style:selectedFilter==AppConstants.filterOptions[index]?AppTextStyles.filterSelected: AppTextStyles.filterUnselected,)),
            ),
          );
        },
      ),
    );
  }
}
