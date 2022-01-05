import 'package:atividades_masterclass/Pages/animations/animations/expansion_tile_page.dart';
import 'package:atividades_masterclass/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class CustomExpansionTileMain extends StatelessWidget {
  const CustomExpansionTileMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          const CustomAppBar(title: "Expansion tile recriada", canGoBack: true),
      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (_, index) {
          return CustomExpansionTile(tileText: "Expansion tile $index");
        },
      ),
    );
  }
}
