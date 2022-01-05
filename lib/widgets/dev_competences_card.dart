import 'package:atividades_masterclass/widgets/competences.dart';
import 'package:flutter/material.dart';

class DevCompetencesCard extends StatelessWidget {
  const DevCompetencesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 240,
      child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Competences(),
        ),
      ),
    );
  }
}
