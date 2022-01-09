import 'package:atividades_masterclass/models/pessoa_model.dart';
import 'package:flutter/widgets.dart';
import 'dart:math' as math;

class ImcViewModel extends ChangeNotifier {
  var _pessoa = const PessoaModel();
  var _resultado = "";
  var _imc = 0.0;

  String get resultado => _resultado;
  void definirAltura(value) {
    _pessoa = PessoaModel(
      altura: double.tryParse(value) ?? 0.0,
      peso: _pessoa.peso,
    );
  }

  void definirPeso(value) {
    _pessoa = PessoaModel(
      altura: _pessoa.altura,
      peso: double.tryParse(value) ?? 0.0,
    );
  }

  void calcularImc() {
    _imc = _pessoa.peso / math.pow(_pessoa.altura, 2);

    if (_imc < 18) {
      _resultado = "Abaixo do peso: ${_imc.toStringAsFixed(2)}";
    } else if (_imc < 24) {
      _resultado = "Peso normal: ${_imc.toStringAsFixed(2)}";
    } else if (_imc >= 24) {
      _resultado = "Acima do peso: ${_imc.toStringAsFixed(2)}";
    }
    notifyListeners();
  }
}
