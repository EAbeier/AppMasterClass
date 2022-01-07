import 'package:atividades_masterclass/Enums/enum_icons.dart';
import 'package:atividades_masterclass/routes/routes.dart';
import 'package:atividades_masterclass/utils/card_content.dart';
import 'package:atividades_masterclass/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final List<CardContent> cardContents = [
    CardContent(
      title: "Animações",
      description:
          "Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos",
      iconUri: EnumIcons.running.uri,
      exercisesCount: 4,
      repoUrl: "",
      pageUri: "",
      routes: [
        ANIMATEDCONTAINER,
        EXPANSIONTILE,
        CONTROLLEDCONTAINER,
        CONTROLLEDEXPANSIONTILE,
      ],
    ),
    CardContent(
      title: "Leitura de Mockup",
      description:
          "Aplicação da técnica de leitura de mockup, contendo 2 exercícios",
      iconUri: EnumIcons.glasses.uri,
      exercisesCount: 2,
      repoUrl: "",
      pageUri: "",
      routes: [MOCKUPAPPFINANCEIRO, MOCKUPTINDER],
    ),
    CardContent(
      title: "Playground",
      description: "Ambiente destinado a testes e estudos em geral",
      iconUri: EnumIcons.toys.uri,
      exercisesCount: 3,
      repoUrl: "",
      pageUri: "",
      routes: [],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cardContents.length,
      itemBuilder: (BuildContext context, int index) {
        return CustomCard(content: cardContents[index]);
      },
    );
  }
}
