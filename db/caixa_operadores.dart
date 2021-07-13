import '../caixa_operador.dart';

class caixaOperadores {
  static List<CaixaOperador> _listcaixaOperadoes = [];
  static void cadastrar(CaixaOperador caixaOperador) {
    _listcaixaOperadoes.add(caixaOperador);
  }

  static Iterable<CaixaOperador> busca(int matricula) {
    return _listcaixaOperadoes
        .where((CaixaOperador) => CaixaOperador.matricula == matricula);
  }

  static void editar(CaixaOperador vCaixaOperdar) {
    bool localizado = _listcaixaOperadoes.contains(vCaixaOperdar);
    if (localizado) ;
    var operadores = busca(vCaixaOperdar.matricula);
    for (CaixaOperador antigo in operadores) {
      antigo.ramal = vCaixaOperdar.ramal;
      antigo.salario = vCaixaOperdar.salario;
      antigo.nome = vCaixaOperdar.nome;
      antigo.RG = vCaixaOperdar.RG;
      antigo.CPF = vCaixaOperdar.CPF;
      antigo.email = vCaixaOperdar.email;
      antigo.endereco = vCaixaOperdar.endereco;
    }
  }

  static void remover(int matricula) {
    _listcaixaOperadoes
        .removeWhere((CaixaOperador) => CaixaOperador.matricula == matricula);
  }
}
