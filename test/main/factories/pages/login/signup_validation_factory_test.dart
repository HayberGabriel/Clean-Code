import 'package:ForDev/main/factories/pages/signup/signup_validation_factory.dart';
import 'package:ForDev/validation/validators/compare_fields_validation.dart';
import 'package:ForDev/validation/validators/email_validation.dart';
import 'package:ForDev/validation/validators/min_length_validation.dart';
import 'package:ForDev/validation/validators/required_field_validation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Should return the correct validations', () {
    final validations = makeSignUpValidations();

    expect(validations, [
      RequiredFieldValidation('name'),
      MinLengthValidation(field: 'name', size: 3),
      RequiredFieldValidation('email'),
      EmailValidation('email'),
      RequiredFieldValidation('password'),
      MinLengthValidation(field: 'password', size: 3),
      RequiredFieldValidation('passwordConfirmation'),
      CompareFieldsValidation(
          field: 'passwordConfirmation', fieldToCompare: 'password')
    ]);
  });
}
