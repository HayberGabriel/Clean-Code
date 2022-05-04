import 'package:ForDev/ui/helpers/i18n/strings/pt_br.dart';
import 'package:ForDev/ui/helpers/i18n/strings/translation.dart';
import 'package:flutter/widgets.dart';

class R {
  static Translation string = PtBr();

  static void load(Locale locale) {
    switch (locale.toString()) {
      default:
        string = PtBr();
        break;
    }
  }
}
