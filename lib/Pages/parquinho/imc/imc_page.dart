import 'package:atividades_masterclass/models/imc_viemodel.dart';
import 'package:atividades_masterclass/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class CalculadoraImc extends StatefulWidget {
  const CalculadoraImc({Key? key}) : super(key: key);

  @override
  _CalculadoraImcState createState() => _CalculadoraImcState();
}

class _CalculadoraImcState extends State<CalculadoraImc> {
  final imcViewModel = ImcViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Calculadora Imc",
        canGoBack: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: imcViewModel.definirPeso,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Peso",
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              onChanged: imcViewModel.definirAltura,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Altura",
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
              onPressed: imcViewModel.calcularImc,
              child: const Text("Calcular IMC"),
            ),
            const SizedBox(
              height: 30,
            ),
            AnimatedBuilder(
              animation: imcViewModel,
              builder: (contex, child) {
                return (Text("Resultado: ${imcViewModel.resultado}"));
              },
            ),
          ],
        ),
      ),
    );
  }
}
