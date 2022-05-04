import 'package:ForDev/ui/components/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';

import 'factories/pages/login/login_page_factory.dart';
import 'factories/pages/signup/signup_page_factory.dart';
import 'factories/pages/splash/splash_page_factory.dart';
import 'factories/pages/surveys/surveys_page_factory.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return GetMaterialApp(
      title: '4Dev',
      debugShowCheckedModeBanner: false,
      theme: makeAppTheme(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: makeSplashPage, transition: Transition.fade),
        GetPage(
            name: '/login', page: makeLoginPage, transition: Transition.fadeIn),
        GetPage(name: '/signup', page: makeSignUpPage),
        GetPage(
            name: '/surveys',
            page: makeSurveysPage,
            transition: Transition.fadeIn),
      ],
    );
  }
}
