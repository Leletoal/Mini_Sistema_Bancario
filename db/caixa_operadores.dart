import '../caixa_operador.dart';

class CaixaOperadores {
  static List<CaixaOperador> _listaDeMatriculas = [];

  static void cadastrar(CaixaOperador caixaOperador) {
    _listaDeMatriculas.add(caixaOperador);
  }

  static Iterable<CaixaOperador> buscar(int matricula) {
    return _listaDeMatriculas.where((obj) => obj.matricula == matricula);
  }

  static void editar(CaixaOperador vCaixaOperador) {
    bool localizado = _listaDeMatriculas.contains(vCaixaOperador);

    if (localizado) {
      var caixaOperadores = buscar(vCaixaOperador.matricula);

      for (var antigo in caixaOperadores) {
        antigo.ramal = vCaixaOperador.ramal;
        antigo.salario = vCaixaOperador.salario;
        antigo.email = vCaixaOperador.email;
        antigo.endereco = vCaixaOperador.endereco;
      }
    }
  }

  static void remover(int matricula) {
    _listaDeMatriculas.removeWhere((caixaOperador) => caixaOperador.matricula == matricula);
  }
}