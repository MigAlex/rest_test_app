import 'package:flutter/material.dart';
import 'package:ncov_rest_api_app/app/services/api_keys.dart';
import 'package:flutter/foundation.dart';

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
}