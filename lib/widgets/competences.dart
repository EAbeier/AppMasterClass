import 'package:flutter/material.dart';

class Competences extends StatelessWidget {
  const Competences({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                "Dart/Flutter: ",
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 160),
              height: 6,
              width: 220,
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Container(
                height: 6,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                "C#: ",
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 100),
              height: 6,
              width: 220,
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Container(
                height: 6,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                ".Net: ",
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 100),
              height: 6,
              width: 220,
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Container(
                height: 6,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                "PHP: ",
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 190),
              height: 6,
              width: 220,
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Container(
                height: 6,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                "EXT.JS ",
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 100),
              height: 6,
              width: 220,
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Container(
                height: 6,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
