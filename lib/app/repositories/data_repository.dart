

import 'package:ncov_rest_api_app/app/services/api.dart';
import 'package:ncov_rest_api_app/app/services/api_service.dart';
import 'package:flutter/foundation.dart';

class DataRepository{
  final APIService apiService;

  DataRepository({@required this.apiService});

  Future<int> getEndpointData(Endpoint endpoint) async{
    final accessToken = await apiService.getAccessToken();
    await apiService.getEndpointData(accessToken: accessToken, endpoint:  endpoint);
  }
}