import 'package:atividades_masterclass/models/pessoa_model.dart';
import 'package:atividades_masterclass/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class CalculadoraImc extends StatefulWidget {
  const CalculadoraImc({Key? key}) : super(key: key);

  @override
  _CalculadoraImcState createState() => _CalculadoraImcState();
}

class _CalculadoraImcState extends State<CalculadoraImc> {
  var pessoa = PessoaModel();
  var _resultado = "";
  var _imc = 0.0;
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
              onChanged: (value) {
                pessoa.peso = double.tryParse(value) ?? 0.0;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Peso",
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              onChanged: (value) {
                pessoa.altura = double.tryParse(value) ?? 0.0;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Altura",
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
              onPressed: () {
                var _imc = pessoa.calcularPeso();
                if (_imc < 18) {
                  _resultado = "Abaixo do peso: ${_imc.toStringAsFixed(2)}";
                } else if (_imc < 24) {
                  _resultado = "Peso normal: ${_imc.toStringAsFixed(2)}";
                } else if (_imc >= 24) {
                  _resultado = "Acima do peso: ${_imc.toStringAsFixed(2)}";
                }

                setState(() {});
              },
              child: const Text("Calcular IMC"),
            ),
            SizedBox(
              height: 30,
            ),
            Text(_resultado),
          ],
        ),
      ),
    );
  }
}
