// ignore_for_file: prefer_adjacent_string_concatenation

import 'package:flutter/material.dart';

class CustomExpansionTile extends StatefulWidget {
  final String tileText;
  const CustomExpansionTile({Key? key, required this.tileText})
      : super(key: key);

  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Card(
        child: Column(
          children: [
            ListTile(
              title: Text(widget.tileText),
              trailing: AnimatedRotation(
                duration: const Duration(seconds: 1),
                turns: isExpanded ? 1.0 / 2.0 : 0.0,
                child: Icon(
                  Icons.expand_more,
                  color: isExpanded ? Colors.blue : null,
                ),
              ),
            ),
            ClipRect(
              child: AnimatedAlign(
                duration: const Duration(seconds: 1),
                alignment: Alignment.center,
                heightFactor: isExpanded ? 1 : 0,
                child: const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
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
  }
}
