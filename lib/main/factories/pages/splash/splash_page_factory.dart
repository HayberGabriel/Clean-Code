import 'package:ForDev/main/factories/pages/splash/splash_presenter_factory.dart';
import 'package:ForDev/ui/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

Widget makeSplashPage() => SplashPage(presenter: makeGetxSplashPresenter());
