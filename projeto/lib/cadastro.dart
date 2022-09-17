import 'dart:io';
import 'package:projeto/empresa.dart';
import 'package:projeto/endereco.dart';
import 'package:projeto/fisico.dart';
import 'package:projeto/funcoes.dart';
import 'package:projeto/juridico.dart';
import 'package:projeto/socios.dart';

Endereco lerEndereco(){
  String logradouro = Funcoes.pergunta("Logradouro: ");
  String numero = Funcoes.numero("Numero: ");
  String bairro = Funcoes.pergunta("Bairro: ");
  String complemento = Funcoes.pergunta("Complemento: ");
  String estado = Funcoes.pergunta("Estado: ");
  String cep = Funcoes.informeCEP("CEP: ");

  Endereco enderecoNovo = Endereco(logradouro, numero, bairro, complemento, estado, cep);
  return enderecoNovo;
}

Fisico lerFisico(){
  String nome = Funcoes.pergunta("Nome: ");
  String documento = Funcoes.informeCPFeFone("CPF: ");
  Endereco endereco = lerEndereco();

  Fisico fisicoNovo = Fisico(nome, documento, endereco);
  return fisicoNovo;
}

Juridico lerJuridico(){
  String nome = Funcoes.pergunta("Nome: ");
  String documento = Funcoes.informeCnpj("CNPJ: ");
  Endereco endereco = lerEndereco();
  String razaoSocial = Funcoes.pergunta("Razão Social: ");

  Juridico juridicoNovo = Juridico(nome, documento, endereco, razaoSocial);
  return juridicoNovo;
}

Socio lerSocio(){
  int opcao;
  Socio socioNovo;
  do {
    print("Informe a opçâo de Socio: ");
    print("1 - Fisico");
    print("2 - Juridico");
    opcao = int.parse(stdin.readLineSync()!);
    if (opcao != 1 && opcao != 2) {
      print("Opção Invalida");    
    }
  } while (opcao != 1 && opcao != 2);
  if (opcao == 1) {
    socioNovo = lerFisico();
  } else{
    socioNovo = lerJuridico();
  }
  return socioNovo;
}

List<CadastroEmpresarial> lerEmpresa(List<CadastroEmpresarial> cloneEmpresa){
  List<CadastroEmpresarial> returnoEmpresa = cloneEmpresa;
  String cnpj = Funcoes.informeCnpj("CNPJ: ");
  String razaoSocial = Funcoes.pergunta("Razão Social: ");
  String nomefantasia = Funcoes.pergunta("Nome Fantasia: ");
  String telefone = Funcoes.informeCPFeFone("Telefone: ");
  Endereco endereco = lerEndereco();
  Socio socio = lerSocio();

  CadastroEmpresarial empresaNova = CadastroEmpresarial(razaoSocial: razaoSocial, nomeFantasia: nomefantasia, cnpj: cnpj, endereco: endereco, telefone: telefone, socio: socio);
  returnoEmpresa.add(empresaNova);
  return returnoEmpresa;
}