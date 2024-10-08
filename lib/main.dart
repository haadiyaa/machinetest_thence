import 'package:flutter/material.dart';
import 'package:machinetask_thence/presentation/screens/home/view/homepage.dart';
import 'package:machinetask_thence/presentation/screens/notfound/view/notfoundpage.dart';
import 'package:machinetask_thence/presentation/screens/product/view/plantdetailspage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: const HomePageWrapper(),
    );
  }
}
