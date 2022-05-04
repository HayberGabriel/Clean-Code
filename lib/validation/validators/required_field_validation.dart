import 'package:ForDev/presentation/protocols/validation.dart';
import 'package:ForDev/validation/protocols/field_validation.dart';
import 'package:equatable/equatable.dart';

class RequiredFieldValidation extends Equatable implements FieldValidation {
  final String field;

  List get props => [field];

  RequiredFieldValidation(this.field);

  ValidationError validate(Map input) =>
      input[field]?.isNotEmpty == true ? null : ValidationError.requiredField;
}
