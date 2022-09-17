import 'package:projeto/endereco.dart';
import 'package:projeto/socios.dart';
import 'package:uuid/uuid.dart';

class CadastroEmpresarial {
  final String id = Uuid().v4();
  String razaoSocial;
  String nomeFantasia;
  String cnpj;
  Endereco endereco;
  String telefone;
  final dataCadastro = DateTime.now();
  Socio socio;

  CadastroEmpresarial(
      {required this.razaoSocial,
      required this.nomeFantasia,
      required this.cnpj,
      required this.endereco,
      required this.telefone,
      required this.socio});

  String contato(){
    String contatoTexto = telefone.toString();
    String ddd = contatoTexto.substring(0, 2);
    String digito = contatoTexto.substring(2, 3);
    String primeiros4 = contatoTexto.substring(3, 7);
    String ultimos4 = contatoTexto.substring(7, 11);
    return "($ddd) $digito $primeiros4-$ultimos4";
  }

  String registroEmp(){
    String cnpjTexto = cnpj.toString();
    String ponto1 = cnpjTexto.substring(0, 2);
    String ponto2 = cnpjTexto.substring(2, 5);
    String barra = cnpjTexto.substring(5, 8);
    String traco = cnpjTexto.substring(8, 12);
    String ultimos = cnpjTexto.substring(12, 14);
    return "$ponto1.$ponto2.$barra/$traco-$ultimos";
  }

  @override
  String toString() {
    return "ID: $id\nCNPJ: ${registroEmp()} Data Cadastro: $dataCadastro\nRazão Social: $razaoSocial\nNome Fantasia: $nomeFantasia\nEndereço: ${endereco.toString()}\nSocio: $socio";
  }
}