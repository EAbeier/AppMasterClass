import 'package:atividades_masterclass/Pages/animations/controlled_animations/controlled_expansion_tile_page.dart';
import 'package:atividades_masterclass/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class ControlledExapansionTileMain extends StatelessWidget {
  const ControlledExapansionTileMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Expansion tile controllada",
        canGoBack: true,
      ),
      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (_, index) {
          return ControlledExpansionTile(tileText: "Expansion tile $index");
        },
      ),
    );
  }
}
