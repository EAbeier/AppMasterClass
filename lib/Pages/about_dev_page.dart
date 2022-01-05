import 'package:atividades_masterclass/utils/tecnology_card_content.dart';
import 'package:atividades_masterclass/widgets/about_dev_card.dart';
import 'package:atividades_masterclass/widgets/dev_competences_card.dart';
import 'package:atividades_masterclass/widgets/tecnology_card.dart';
import 'package:flutter/material.dart';

class AboutDev extends StatelessWidget {
  AboutDev({Key? key}) : super(key: key);
  final List<TecnologyCardContent> contents = [
    TecnologyCardContent(
      iconUri: 'assets/images/icons/dart.svg',
      tecnologyName: "Dart",
    ),
    TecnologyCardContent(
      iconUri: 'assets/images/icons/flutter.svg',
      tecnologyName: "Flutter",
    ),
    TecnologyCardContent(
      iconUri: 'assets/images/icons/csharp.svg',
      tecnologyName: "C#",
    ),
    TecnologyCardContent(
      iconUri: 'assets/images/icons/dotnet.svg',
      tecnologyName: ".NET",
    ),
    TecnologyCardContent(
      iconUri: 'assets/images/icons/android.svg',
      tecnologyName: "Android",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AboutDevCard(),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Tecnologias Favoritas",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: contents.length,
                itemBuilder: (BuildContext context, int index) {
                  return TecnologyCard(
                    content: contents[index],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Habilidades e competências",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const DevCompetencesCard(),
          ],
        ),
      ),
    );
  }
}
