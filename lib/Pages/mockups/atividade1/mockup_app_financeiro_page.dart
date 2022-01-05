import 'package:atividades_masterclass/widgets/custom_appbar.dart';
import 'package:atividades_masterclass/widgets/logo.dart';
import 'package:flutter/material.dart';

class MockupAppFinanceiro extends StatelessWidget {
  const MockupAppFinanceiro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Mockup app financeiro",
        canGoBack: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //- - - - - -  - PARTE DO LOGO - - - - - - - -//
            const Logo(),
            //- - - - - -  - PARTE DO LOGO - - - - - - - -//
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Get your money Under Control',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Manage your expense. \nSeamlessly.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white.withOpacity(0.5),
                  fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(primary: const Color(0xff5e5ce5)),
                onPressed: () {},
                child: const Text('Sign Up with Email ID'),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white, onPrimary: Colors.black),
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Sign Up with google'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
                text: const TextSpan(
              children: [
                TextSpan(text: 'Already have an account? '),
                TextSpan(
                  text: 'Sign in',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ],
            )),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
