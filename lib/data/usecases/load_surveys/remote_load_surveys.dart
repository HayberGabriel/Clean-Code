import 'package:ForDev/data/http/http_client.dart';
import 'package:ForDev/data/http/http_error.dart';
import 'package:ForDev/data/models/remote_survey_model.dart';
import 'package:ForDev/domain/entities/survey_entity.dart';
import 'package:ForDev/domain/helpers/domain_error.dart';
import 'package:ForDev/domain/usecases/load_surveys.dart';
import 'package:flutter/material.dart';

class RemoteLoadSurveys implements LoadSurveys {
  final String url;
  final HttpClient<List<Map>> httpClient;

  RemoteLoadSurveys({@required this.url, @required this.httpClient});

  Future<List<SurveyEntity>> load() async {
    try {
      final httpResponse = await httpClient.request(url: url, method: 'get');
      return httpResponse
          .map((json) => RemoteSurveyModel.fromJson(json).toEntity());
    } on HttpError catch (error) {
      throw error == HttpError.forbidden
          ? DomainError.accessDenied
          : DomainError.unexpected;
    }
  }
}
