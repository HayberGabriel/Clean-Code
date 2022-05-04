import 'package:ForDev/main/factories/pages/signup/signup_validation_factory.dart';
import 'package:ForDev/main/factories/usecases/add_account_factory.dart';
import 'package:ForDev/main/factories/usecases/save_current_account_factory.dart';
import 'package:ForDev/presentation/presenters/getx_signup_presenter.dart';
import 'package:ForDev/ui/pages/signup/signup_presenter.dart';

SignUpPresenter makeGetxSignUpPresenter() => GetxSignUpPresenter(
    addAccount: makeRemoteAddAccount(),
    validation: makeSignUpValidation(),
    saveCurrentAccount: makeLocalSaveCurrentAccount());
