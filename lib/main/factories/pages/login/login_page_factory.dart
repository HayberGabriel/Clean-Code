import 'package:ForDev/ui/pages/login/login_page.dart';
import 'package:flutter/material.dart';

import 'login_presenter_factory.dart';

Widget makeLoginPage() => LoginPage(makeGetxLoginPresenter());
