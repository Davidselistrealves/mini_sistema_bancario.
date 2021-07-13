import '../agencia.dart';

class Agencias {
  static List<Agencia> _listDeAgencias = [];
  static void cadastrar(Agencia agencia) {
    _listDeAgencias.add(agencia);
  }

  static Iterable<Agencia> buscar(int numero) {
    return _listDeAgencias.where((agencia) => agencia.numero == numero);
  }

  static void editar(Agencia vAgencia) {
    bool localizado = _listDeAgencias.contains(vAgencia);
    if (localizado) ;
    var agencias = buscar(vAgencia.numero);
    for (Agencia antiga in agencias) {
      antiga.endereco = vAgencia.endereco;
      antiga.gerente = vAgencia.gerente;
    }
  }

  static void remover(int numero) {
    _listDeAgencias.removeWhere((agencia) => agencia.numero == numero);
  }
}
