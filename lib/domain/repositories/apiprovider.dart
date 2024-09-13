import 'package:http/http.dart' as http;
import 'package:machinetask_thence/core/constants/appconstants.dart';

class ApiProvider {
  Future<http.Response> homescreenlist() async {
    final response = await http.get(
      Uri.parse('${AppConstants.apiBaseUrl}${AppConstants.plantsEndpoint}'),
    );
    return response;
  }
}