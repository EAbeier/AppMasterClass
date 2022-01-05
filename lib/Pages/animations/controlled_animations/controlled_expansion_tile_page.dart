// ignore_for_file: prefer_adjacent_string_concatenation

import 'package:flutter/material.dart';
import 'dart:math';

class ControlledExpansionTile extends StatefulWidget {
  final String tileText;
  const ControlledExpansionTile({Key? key, required this.tileText})
      : super(key: key);

  @override
  State<ControlledExpansionTile> createState() =>
      _ControlledExpansionTileState();
}

class _ControlledExpansionTileState extends State<ControlledExpansionTile>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double?> heightAnimation;
  late Animation<Color?> colorAnimation;
  late Animation<double> transformAnimation;

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

    heightAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(controller);

    colorAnimation = ColorTween(
      begin: null,
      end: Colors.blue,
    ).animate(controller);

    transformAnimation = Tween<double>(
      begin: 0.0,
      end: pi,
    ).animate(controller);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return GestureDetector(
          onTap: toggle,
          child: Card(
            child: Column(
              children: [
                ListTile(
                  title: Text(widget.tileText),
                  trailing: Transform.rotate(
                    angle: transformAnimation.value,
                    child: Icon(
                      Icons.expand_more,
                      color: colorAnimation.value,
                    ),
                  ),
                ),
                ClipRect(
                  child: Align(
                    alignment: Alignment.center,
                    heightFactor: heightAnimation.value,
                    child: const Padding(
                      padding: EdgeInsets.only(right: 20, left: 20, bottom: 20),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit,' +
                            ' sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.' +
                            ' Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.' +
                            ' Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
