import '../pessoa.dart';

class Clientes {
  static List<Pessoa> _listaDePessoas= [];

  static void cadastrar(Pessoa pessoa) {
    _listaDePessoas.add(pessoa);
  }

  static Iterable<Pessoa> buscar(String telefoneParaContato) {
    return _listaDePessoas.where((pessoa) => pessoa.telefoneParaContato == telefoneParaContato);
  }

  static void editar(Pessoa vPessoa) {
    bool localizado = _listaDePessoas.contains(vPessoa);

    if (localizado) {
      var pessoas = buscar(vPessoa.telefoneParaContato);
      for (Pessoa antigo in pessoas) {
        antigo.email = vPessoa.email;
        antigo.telefoneParaContato = vPessoa.telefoneParaContato;
        antigo.endereco = vPessoa.endereco;
      }
    }
  }

  static void remover(String telefoneParaContato) {
    var pessoas = buscar(telefoneParaContato);
    for (var pessoa in pessoas) {
      int indice = _listaDePessoas.indexOf(pessoa);
      if(indice != -1){
        _listaDePessoas.removeAt(indice);
      }
    }
  }
}