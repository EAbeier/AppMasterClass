import 'package:atividades_masterclass/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class AnimatedContainerExercise extends StatefulWidget {
  const AnimatedContainerExercise({Key? key}) : super(key: key);

  @override
  _AnimatedContainerExerciseState createState() =>
      _AnimatedContainerExerciseState();
}

class _AnimatedContainerExerciseState extends State<AnimatedContainerExercise> {
  bool isEspanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: const CustomAppBar(
        title: "Container animado",
        canGoBack: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AnimatedAlign(
          duration: const Duration(seconds: 1),
          alignment: isEspanded ? Alignment.topCenter : Alignment.bottomRight,
          child: GestureDetector(
            onTap: () {
              setState(() {
                isEspanded = !isEspanded;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(seconds: 1),
              height: isEspanded ? 50 : 50,
              width: isEspanded ? 100 : 50,
              decoration: BoxDecoration(
                color: isEspanded ? Colors.red : Colors.blue,
                borderRadius: BorderRadius.all(
                  isEspanded
                      ? const Radius.circular(0)
                      : const Radius.circular(50),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
