import 'package:flutter/material.dart';
import 'package:machinetask_thence/core/constants/colors.dart';
import 'package:machinetask_thence/core/constants/dimensions.dart';
import 'package:machinetask_thence/core/constants/textstyles.dart';
import 'package:machinetask_thence/data/models/plantmodel.dart';

class AvailableSizeWidget extends StatefulWidget {
  const AvailableSizeWidget({
    super.key,
    required this.datum,
    // required this.indexx,
  });

  final Datum datum;
  // final int indexx;

  @override
  State<AvailableSizeWidget> createState() => _AvailableSizeWidgetState();
}

class _AvailableSizeWidgetState extends State<AvailableSizeWidget> {
  @override
  Widget build(BuildContext context) {
    String current =
        widget.datum.availableSize[0].toString();
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.datum.availableSize.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                current = widget
                    .datum.availableSize[index]
                    .toString();
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimensions.paddingMedium,
              ),
              margin: const EdgeInsets.only(right: AppDimensions.marginSmall),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  AppDimensions.borderRadiusSmall,
                ),
                color: current ==
                        widget.datum
                            .availableSize[index]
                            .toString()
                    ? AppColors.secondaryColor
                    : const Color.fromARGB(255, 240, 238, 238),
              ),
              child: Center(
                  child: Text(
                '${widget.datum.availableSize[index].toString()} ${widget.datum.unit}',
                style: current ==
                        widget.datum
                            .availableSize[index]
                            .toString()
                    ? AppTextStyles.filterSelected
                    : AppTextStyles.smallGrey,
              )),
            ),
          );
        },
      ),
    );
  }
}
