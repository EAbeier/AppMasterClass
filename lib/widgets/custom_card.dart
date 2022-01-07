import 'package:atividades_masterclass/Enums/enum_icons.dart';
import 'package:atividades_masterclass/routes/routes.dart';
import 'package:atividades_masterclass/utils/card_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  final CardContent content;
  const CustomCard({Key? key, required this.content}) : super(key: key);

  static const List<Map<dynamic, String>> data = [];
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 220,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor,
                  ),
                  child: SvgPicture.asset(
                    content.iconUri,
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Text(
                    content.title,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                Text(
                  "Exercicios:",
                  style: Theme.of(context).primaryTextTheme.bodyText2,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  content.exercisesCount.toString(),
                  style: Theme.of(context).textTheme.bodyText1,
                )
              ],
            ),
            Expanded(
              child: Center(
                child: Text(
                  content.description,
                  style: Theme.of(context).primaryTextTheme.bodyText1,
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  height: 20,
                  width: 20,
                  child: SvgPicture.asset(
                    EnumIcons.github.uri,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () =>
                        Navigator.of(context).pushNamed(content.repoUrl),
                    child: Text(
                      "Acessar código fonte",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.of(context)
                      .pushNamed(EXERCISES, arguments: content),
                  child: Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Center(
                      child: Text("Ver mais",
                          style: Theme.of(context).textTheme.bodyText1),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
