import 'package:flutter/material.dart';
import 'package:ncov_rest_api_app/app/services/api_keys.dart';

class API{
  final String apiKey;

  API({@required this.apiKey});

  factory API.sandbox() => API(apiKey: APIKeys.sandboxKey);

  static final String host = "https://ncov2019-admin.firebaseapp.com";

  Uri tookenUri() => Uri(
    scheme: 'https',
    host: host,
    path: 'token',
  );
}