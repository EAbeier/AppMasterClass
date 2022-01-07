import 'package:atividades_masterclass/Enums/enum_icons.dart';
import 'package:flutter/material.dart';

class Botoes extends StatelessWidget {
  const Botoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: const BorderRadius.all(Radius.circular(50))),
          height: 40,
          width: double.infinity,
          child: GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 90),
                  child: Image.asset(
                    EnumIcons.apple.uri,
                    height: 15,
                    width: 15,
                  ),
                ),
                const Center(
                  child: Text(
                    "SIGN IN WITH APPLE",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: const BorderRadius.all(Radius.circular(50))),
          height: 40,
          width: double.infinity,
          child: GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 80),
                  child: Image.asset(
                    EnumIcons.facebookPng.uri,
                    height: 15,
                    width: 15,
                  ),
                ),
                const Center(
                  child: Text(
                    "SIGN IN WITH FACEBOOK",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: const BorderRadius.all(Radius.circular(50))),
          height: 40,
          width: double.infinity,
          child: GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 70),
                  child: Image.asset(
                    EnumIcons.conversation.uri,
                    height: 15,
                    width: 15,
                  ),
                ),
                const Center(
                  child: Text(
                    "SIGN IN WITH PHONE NUMBER",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
