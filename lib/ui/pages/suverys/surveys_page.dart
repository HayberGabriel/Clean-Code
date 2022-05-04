import 'package:ForDev/ui/components/spinner_dialog.dart';
import 'package:ForDev/ui/helpers/i18n/resources.dart';
import 'package:ForDev/ui/pages/suverys/surveys_presenter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'components/survey_item.dart';

class SurveysPage extends StatelessWidget {
  final SurveysPresenter presenter;

  SurveysPage(this.presenter);

  @override
  Widget build(BuildContext context) {
    presenter.loadData();
    return Scaffold(
      appBar: AppBar(title: Text(R.string.surveys)),
      body: Builder(
        builder: (context) {
          presenter.isLoadingStream.listen((isLoading) {
            if (isLoading == true) {
              showLoading(context);
            } else {
              hideLoading(context);
            }
          });

          return Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: CarouselSlider(
              options: CarouselOptions(enlargeCenterPage: true, aspectRatio: 1),
              items: [
                SurveyItem(),
                SurveyItem(),
                SurveyItem(),
              ],
            ),
          );
        },
      ),
    );
  }
}
