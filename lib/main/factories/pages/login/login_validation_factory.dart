import 'package:ForDev/main/builders/validation_builder.dart';
import 'package:ForDev/presentation/protocols/validation.dart';
import 'package:ForDev/validation/protocols/field_validation.dart';
import 'package:ForDev/validation/validators/validation_composite.dart';

Validation makeLoginValidation() => ValidationComposite(makeLoginValidations());

List<FieldValidation> makeLoginValidations() => [
      ...ValidationBuilder.field('email').required().email().build(),
      ...ValidationBuilder.field('password').required().min(3).build()
    ];
