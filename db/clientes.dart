import '../endereco.dart';
import '../pessoa.dart';

class Clientes {
  static List<Pessoa> _listDeClientes = [];

  static void cadastrar(Pessoa pessoa) {
    _listDeClientes.add(pessoa);
  }

  static Iterable<Pessoa> buscar(String telefoneParaContato) {
    return _listDeClientes
        .where((pessoa) => pessoa.telefoneParaContato == telefoneParaContato);
  }

  static void editar(Pessoa vCliente) {
    bool localizado = _listDeClientes.contains(vCliente);

    if (localizado) {
      var clientes = buscar(vCliente.telefoneParaContato);
      for (Pessoa antigo in clientes) {
        antigo.email = vCliente.email;
        antigo.endereco = vCliente.endereco;
      }
    }
  }

  static void remover(String telefoneParaContato) {
    _listDeClientes.removeWhere(
        (Pessoa) => Pessoa.telefoneParaContato == telefoneParaContato);
  }
}
