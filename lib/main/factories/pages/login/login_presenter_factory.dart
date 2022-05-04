import 'package:ForDev/main/factories/usecases/authentication_factory.dart';
import 'package:ForDev/main/factories/usecases/save_current_account_factory.dart';
import 'package:ForDev/presentation/presenters/getx_login_presenter.dart';
import 'package:ForDev/ui/pages/login/login_presenter.dart';

import 'login_validation_factory.dart';

LoginPresenter makeGetxLoginPresenter() => GetxLoginPresenter(
    authentication: makeRemoteAuthentication(),
    validation: makeLoginValidation(),
    saveCurrentAccount: makeLocalSaveCurrentAccount());
