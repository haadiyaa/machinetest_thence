import 'dart:async';
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:machinetask_thence/data/models/plantmodel.dart';
import 'package:machinetask_thence/domain/repositories/apirepositorry.dart';
import 'package:meta/meta.dart';

part 'plants_event.dart';
part 'plants_state.dart';

class PlantsBloc extends Bloc<PlantsEvent, PlantsState> {
  Apirepository apirepository = Apirepository();

  PlantsBloc() : super(PlantsInitial()) {
    on<Fetchplantslist>(_fetchList);
  }

  Future<FutureOr<void>> _fetchList(Fetchplantslist event, Emitter<PlantsState> emit) async {
    emit(Loadingfetch());
    late PlantsModel fetchedDatas;
    try {
      final Response response = await apirepository.homescreenRepository();

      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);

        fetchedDatas = PlantsModel.fromJson(result);
        emit(Successfetch(data: fetchedDatas));
      } else {
        emit(Failurefetch("Somthing went wrong"));
      }
    } catch (e) {
      emit(Failurefetch(e.toString()));
    }
  }
}
