import 'package:ForDev/main/factories/usecases/load_current_account_factory.dart';
import 'package:ForDev/presentation/presenters/getx_splash_presenter.dart';
import 'package:ForDev/ui/pages/splash/splash_presenter.dart';

SplashPresenter makeGetxSplashPresenter() =>
    GetxSplashPresenter(loadCurrentAccount: makeLocalLoadCurrentAccount());
