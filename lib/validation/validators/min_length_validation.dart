import 'package:ForDev/presentation/protocols/validation.dart';
import 'package:ForDev/validation/protocols/field_validation.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class MinLengthValidation extends Equatable implements FieldValidation {
  final String field;
  final int size;

  List get props => [field, size];

  MinLengthValidation({@required this.field, @required this.size});

  ValidationError validate(Map input) {
    return input[field] != null && input[field].length >= size
        ? null
        : ValidationError.invalidField;
  }
}
