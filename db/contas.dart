import '../conta.dart';

class Contas {
  static List<Conta> _listDeContas = [];

  static void cadastrar(Conta conta) {
    _listDeContas.add(conta);
  }

  static Iterable<Conta> buscar(String getNumero) {
    return _listDeContas.where((conta) => conta.getNumero == getNumero);
  }

  static void editar(Conta vConta) {
    bool localizado = _listDeContas.contains(vConta);
    if (localizado) ;
    var contas = buscar(vConta.getNumero);
    for (Conta antigo in contas) {
      antigo.agencia = vConta.agencia;
      antigo.cliente = vConta.cliente;
    }
  }

  static void remover(String getNumero) {
    _listDeContas.removeWhere((conta) => conta.getNumero == getNumero);
  }
}
