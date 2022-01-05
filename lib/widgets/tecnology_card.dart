import 'package:atividades_masterclass/utils/tecnology_card_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TecnologyCard extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const TecnologyCard({required this.content});
  final TecnologyCardContent content;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 94,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              SvgPicture.asset(
                content.iconUri,
                width: 20,
                height: 48,
                color: Theme.of(context).iconTheme.color,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                content.tecnologyName,
                style: Theme.of(context).textTheme.bodyText1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
