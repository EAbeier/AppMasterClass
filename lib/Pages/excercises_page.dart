import 'package:atividades_masterclass/utils/card_content.dart';
import 'package:atividades_masterclass/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class ExercisesPage extends StatelessWidget {
  const ExercisesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final content = ModalRoute.of(context)!.settings.arguments as CardContent;
    return Scaffold(
      appBar: CustomAppBar(
        title: content.title,
        canGoBack: true,
      ),
      body: ListView.builder(
        itemCount: content.exercisesCount,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () => Navigator.of(context).pushNamed(content.routes[index]),
            child: Card(
              child: ListTile(
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(100)),
                    child: Center(child: Text("${index + 1}")),
                  ),
                  title: Text("Exercício ${index + 1}")),
            ),
          );
        },
      ),
    );
  }
}
