import 'package:projeto/endereco.dart';
import 'package:projeto/socios.dart';

class Juridico extends Socio{
  String razaoSocial;

  Juridico(nome, documento, Endereco endereco, this.razaoSocial)
  :super(nome, documento, endereco);

  String cnpj(){
    String cnpjTexto = documento.toString();
    String ponto1 = cnpjTexto.substring(0, 2);
    String ponto2 = cnpjTexto.substring(2, 5);
    String barra = cnpjTexto.substring(5, 8);
    String traco = cnpjTexto.substring(8, 12);
    String ultimos = cnpjTexto.substring(12, 14);
    return "$ponto1.$ponto2.$barra/$traco-$ultimos";
  }

  @override
  String toString() {
    return "CNPJ: ${cnpj()}\nNome Fantasia: $nome\nEndereço: ${endereco.toString()}\nRazão Social: $razaoSocial\n";
  }
}