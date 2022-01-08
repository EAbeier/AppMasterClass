import 'package:atividades_masterclass/models/homepage_model.dart';
import 'package:atividades_masterclass/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final model = HomePageModel();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: model.length,
      itemBuilder: (BuildContext context, int index) {
        return CustomCard(content: model.getCardcontent(index));
      },
    );
  }
}
