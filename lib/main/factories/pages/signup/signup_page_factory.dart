import 'package:ForDev/main/factories/pages/signup/signup_presenter_factory.dart';
import 'package:ForDev/ui/pages/signup/signup_page.dart';
import 'package:flutter/material.dart';

Widget makeSignUpPage() => SignUpPage(makeGetxSignUpPresenter());
