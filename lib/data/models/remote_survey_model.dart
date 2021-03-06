import 'package:ForDev/data/http/http_error.dart';
import 'package:ForDev/domain/entities/survey_entity.dart';
import 'package:meta/meta.dart';

class RemoteSurveyModel {
  final String id;
  final String question;
  final String date;
  final bool didAnswer;

  RemoteSurveyModel(
      {@required this.id,
      @required this.question,
      @required this.date,
      @required this.didAnswer});

  factory RemoteSurveyModel.fromJson(Map json) {
    if (!json.keys.toSet().containsAll(['id', 'question', 'date', 'didAnswer'])) {

      throw HttpError.invalidData;
    }
    return RemoteSurveyModel(
        id: json['id'],
        question: json['question'],
        date: json['date'],
        didAnswer: json['didAnswer']);
  }

  SurveyEntity toEntity() => SurveyEntity(
      id: id,
      question: question,
      dateTime: DateTime.parse(date),
      didAnswer: didAnswer);
}
