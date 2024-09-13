import 'package:http/http.dart' as http;
import 'package:machinetask_thence/domain/repositories/apiprovider.dart';

class Apirepository {
  final ApiProvider apiprovider = ApiProvider();
  Future<http.Response> homescreenRepository() async {
    return apiprovider.homescreenlist();
  }
}