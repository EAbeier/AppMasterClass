import 'package:atividades_masterclass/utils/enums/enum_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutDevCard extends StatelessWidget {
  const AboutDevCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(4.0),
                width: 116,
                height: 116,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Theme.of(context).scaffoldBackgroundColor),
                child: ClipOval(
                  child: Image.network(
                      "https://avatars.githubusercontent.com/u/39953649?v=4"),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "Émerson Alves Beier",
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Expanded(
                child: SizedBox(
                  width: 360,
                  height: 53,
                  child: Center(
                      child: Text(
                    "Dev C# buscando aprender Flutter com dart para migrar de área e se tornar referência na linguagem.",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.caption,
                  )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    EnumIcons.whats.uri,
                    color: Theme.of(context).highlightColor,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SvgPicture.asset(
                    EnumIcons.gitHubAlt.uri,
                    color: Theme.of(context).highlightColor,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SvgPicture.asset(
                    EnumIcons.instagram.uri,
                    color: Theme.of(context).highlightColor,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SvgPicture.asset(
                    EnumIcons.facebook.uri,
                    color: Theme.of(context).highlightColor,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
