import '../agencia.dart';

class Agencias {
  static List<Agencia> _listaDeAgencias = [];

  static void cadastrar(Agencia agencia) {
    _listaDeAgencias.add(agencia);
  }

  static Iterable<Agencia> buscar(int numero) {
    return _listaDeAgencias.where((agencia) => agencia.numero == numero);
  }

  static void editar(Agencia vAgencia) {
    bool localizado = _listaDeAgencias.contains(vAgencia);

    if (localizado) {
      var agencias = buscar(vAgencia.numero);
      for (Agencia antigo in agencias) {
        antigo.numero = vAgencia.numero;
        antigo.gerente = vAgencia.gerente;
        antigo.endereco = vAgencia.endereco;
      }
    }
  }

  static void remover(int numero) {
    _listaDeAgencias.removeWhere((agencia) => agencia.numero == numero);
  }
}
