import 'package:flutter/material.dart';
import 'package:machinetask_thence/core/constants/colors.dart';

class AppTextStyles {
  static const TextStyle header = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textColor,
  );

  static const TextStyle subHeader = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.textColor,
  );

  static const TextStyle subTileHeader = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.textColor,
  );

  static const TextStyle bodyText = TextStyle(
    fontSize: 16,
    color: AppColors.textColor,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 14,
    color: AppColors.greyColor,
  );

  static const TextStyle price = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );

  static const TextStyle button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static const TextStyle filterSelected = TextStyle(
    fontSize: 14,
    color: AppColors.cardColor,
  );

  static const TextStyle filterUnselected = TextStyle(
    fontSize: 14,
    color: AppColors.greyColor,
  );

  static const TextStyle rating = TextStyle(
    fontSize: 12,
    color: AppColors.accentColor,
  );

   static const TextStyle smallGrey = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.greyColor,
  );
}
