import 'package:flutter/material.dart';
import 'package:ncov_rest_api_app/app/services/api_keys.dart';
import 'package:flutter/foundation.dart';


enum Endpoint{
  cases,
  casesSuspected,
  casesConfirmed,
  deaths,
  recovered,
}

class API{
  final String apiKey;

  API({@required this.apiKey});

  factory API.sandbox() => API(apiKey: APIKeys.sandboxKey);

  static final String host = "ncov2019-admin.firebaseapp.com";

  Uri tokenUri() => Uri(
    scheme: 'https',
    host: host,
    path: 'token',
  );

  Uri endpointUri(Endpoint endpoint) => Uri(
    scheme: 'https',
    host: host,
    path: _paths[endpoint],
  );

  static Map<Endpoint, String> _paths = {
    Endpoint.cases: 'cases',
    Endpoint.casesSuspected: 'casesSuspected',
    Endpoint.casesConfirmed: 'casesConfirmed',
    Endpoint.deaths: 'deaths',
    Endpoint.recovered: 'recovered'
  };
}