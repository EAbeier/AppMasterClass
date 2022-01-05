import 'package:atividades_masterclass/widgets/botoes.dart';
import 'package:atividades_masterclass/widgets/custom_appbar.dart';
import 'package:atividades_masterclass/widgets/termos.dart';
import 'package:flutter/material.dart';

class MockupTinder extends StatelessWidget {
  const MockupTinder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Mockup login tinder",
        canGoBack: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Color(0xffE04684), Color(0xffFF8941)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/icons/tinder.png',
                  height: 100,
                  width: 110,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Termos(),
                const SizedBox(
                  height: 10,
                ),
                const Botoes(),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Trouble Signing In?",
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 11,
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
