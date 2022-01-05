import 'package:atividades_masterclass/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class ControlledContainer extends StatefulWidget {
  const ControlledContainer({Key? key}) : super(key: key);

  @override
  _ControlledContainerState createState() => _ControlledContainerState();
}

class _ControlledContainerState extends State<ControlledContainer>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Size?> sizeAnimation;
  late Animation<Alignment?> aligmentAnimation;
  late Animation<Color?> colorAnimation;
  late Animation<BorderRadius?> borderAnimation;

  void toggle() {
    if (controller.value == 0) {
      controller.animateTo(1);
    } else {
      controller.reverse();
    }
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    sizeAnimation = SizeTween(
      begin: const Size(50, 50),
      end: const Size(100, 50),
    ).animate(controller);

    colorAnimation = ColorTween(
      begin: Colors.blue,
      end: Colors.red,
    ).animate(controller);

    aligmentAnimation = AlignmentTween(
      begin: Alignment.bottomRight,
      end: Alignment.topCenter,
    ).animate(controller);

    borderAnimation = BorderRadiusTween(
      begin: const BorderRadius.all(Radius.circular(50)),
      end: BorderRadius.zero,
    ).animate(controller);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Container controlado",
        canGoBack: true,
      ),
      body: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return Container(
            alignment: aligmentAnimation.value,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: toggle,
                child: Container(
                  alignment: aligmentAnimation.value,
                  height: sizeAnimation.value?.height,
                  width: sizeAnimation.value?.width,
                  decoration: BoxDecoration(
                    color: colorAnimation.value,
                    borderRadius: borderAnimation.value,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
