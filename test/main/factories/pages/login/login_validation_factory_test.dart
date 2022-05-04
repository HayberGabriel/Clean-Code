import 'package:ForDev/main/factories/pages/login/login_validation_factory.dart';
import 'package:ForDev/validation/validators/email_validation.dart';
import 'package:ForDev/validation/validators/min_length_validation.dart';
import 'package:ForDev/validation/validators/required_field_validation.dart';
import 'package:test/test.dart';

void main() {
  test('Should return the correct validations', () {
    final validations = makeLoginValidations();

    expect(validations, [
      RequiredFieldValidation('email'),
      EmailValidation('email'),
      RequiredFieldValidation('password'),
      MinLengthValidation(field: 'password', size: 3)
    ]);
  });
}
