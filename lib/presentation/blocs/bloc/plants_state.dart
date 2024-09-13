part of 'plants_bloc.dart';

@immutable
abstract class PlantsState {}

class PlantsInitial extends PlantsState {}

class Successfetch extends PlantsState {
  final PlantsModel data;

  Successfetch({required this.data});
}

class Failurefetch extends PlantsState {final String? message;

  Failurefetch(this.message);}

class Loadingfetch extends PlantsState {}
