
import 'package:http/http.dart' as http;
import 'package:ncov_rest_api_app/app/services/api.dart';

class APIService{
  final API api;

  APIService(this.api);

  Future<String> getAccessToken() async{
    final response = await http.post(
      api.tookenUri().toString(),
      headers: {'Authorization': 'Basic ${api.apiKey}'},
      
    );
  }
}