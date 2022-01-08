import 'package:atividades_masterclass/routes/routes.dart';
import 'package:atividades_masterclass/utils/card_content.dart';
import 'package:atividades_masterclass/utils/enums/enum_icons.dart';

class HomePageModel {
  final List<CardContent> _cardContents = [
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
      exercisesCount: 1,
      repoUrl: "",
      pageUri: "",
      routes: [IMC],
    ),
  ];

  List<CardContent> get contents {
    return _cardContents;
  }

  int get length {
    return _cardContents.length;
  }

  CardContent getCardcontent(int index) {
    return _cardContents[index];
  }
}
