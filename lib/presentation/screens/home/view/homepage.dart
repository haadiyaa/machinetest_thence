import 'dart:async';

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
import 'package:machinetask_thence/presentation/screens/notfound/view/notfoundpage.dart';
import 'package:machinetask_thence/presentation/screens/product/view/plantdetailspage.dart';
import 'package:uni_links2/uni_links.dart';

class HomePageWrapper extends StatelessWidget {
  const HomePageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlantsBloc()..add(Fetchplantslist()),
      child: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PlantsModel plantsModel;
  
  StreamSubscription? _sub;

  @override
  void initState() {
    super.initState();
    _handleDeepLink();
  }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }

  void _handleDeepLink() {
    _sub = uriLinkStream.listen((Uri? uri) {
      if (uri != null) {
        print('Received deep link: $uri');
        _navigateToProductPage(uri);
      }
    }, onError: (err) {
      print('Failed to receive deep link: $err');
    });
  }

  void _navigateToProductPage(Uri uri) {
    final segments = uri.pathSegments;
    if (segments.length == 4 && segments[2] == 'product') {
      final productId = int.tryParse(segments[3]);
      if (productId != null) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PlantDetailsPage(id: productId.toString()),
          ),
        );
      }
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const NotFoundPage(),
        ),
      );
    }
  }

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
                FilterWidiget(),
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
                                  datum: plantsModel.data[index - 1],
                                ),
                              ),
                            );
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
                                datum: plantsModel.data[index],
                              ),
                            ),
                          );
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
          ),
        ],
      ),
    );
  }
}
