import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machinetask_thence/core/constants/colors.dart';
import 'package:machinetask_thence/core/constants/dimensions.dart';
import 'package:machinetask_thence/core/constants/textstyles.dart';
import 'package:machinetask_thence/data/models/plantmodel.dart';
import 'package:machinetask_thence/presentation/blocs/bloc/plants_bloc.dart';
import 'package:machinetask_thence/presentation/screens/home/widgets/adwidget.dart';
import 'package:machinetask_thence/presentation/screens/home/widgets/filterwidget.dart';
import 'package:machinetask_thence/presentation/screens/home/widgets/loaderwidget.dart';
import 'package:machinetask_thence/presentation/screens/home/widgets/plantlisttile.dart';
import 'package:machinetask_thence/presentation/screens/product/view/plantdetailspage.dart';

class HomePageWrapper extends StatelessWidget {
  const HomePageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlantsBloc()..add(Fetchplantslist()),
      child: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  late PlantsModel plantsModel;

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
          const Padding(
            padding: EdgeInsets.only(left: AppDimensions.paddingMedium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Houseplants',
                  style: AppTextStyles.header,
                ),
                SizedBox(
                  height: AppDimensions.heightMedium,
                ),
                FliterWdiget(),
              ],
            ),
          ),
          BlocBuilder<PlantsBloc, PlantsState>(
            builder: (context, state) {
              if (state is Successfetch) {
                plantsModel = state.data;
                return Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.only(
                        top: AppDimensions.paddingLarge,
                        left: AppDimensions.paddingMedium,
                        right: AppDimensions.paddingMedium),
                    itemCount: plantsModel.data.length + 1,
                    itemBuilder: (BuildContext context, int index) {
                      if (index == 2) {
                        return const AdWidget();
                      }
                      if (index > 2) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => PlantDetailsPage(
                                          plantsModel: plantsModel,
                                          indexx: index-1,
                                        )));
                          },
                          child: PlantListTile(
                            size: size,
                            plantsModel: plantsModel,
                            index: index - 1,
                          ),
                        );
                      }
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => PlantDetailsPage(
                                        plantsModel: plantsModel,
                                        indexx: index,
                                      )));
                        },
                        child: PlantListTile(
                          size: size,
                          plantsModel: plantsModel,
                          index: index,
                        ),
                      );
                    },
                  ),
                );
              }
              return LoaderWidget(size: size);
            },
          )
        ],
      ),
    );
  }
}
