import 'dart:math' as math;

class PessoaModel {
  double _peso = 0.0;
  double _altura = 0.0;

  set peso(double value) {
    _peso = value;
  }

  set altura(double value) {
    _altura = value;
  }

  double calcularPeso() {
    final imc = _peso / math.pow(_altura, 2);
    return imc;
  }
}
