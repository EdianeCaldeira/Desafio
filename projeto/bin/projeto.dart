import 'dart:io';
import 'package:projeto/buscar.dart';
import 'package:projeto/cadastro.dart';
import 'package:projeto/empresa.dart';
import 'package:projeto/funcoes.dart';
import 'package:projeto/remover.dart';

void main() {
  List<CadastroEmpresarial> empresas =[];
  bool continuar = true;

  while (continuar) {
    print("\n O que você deseja?");
    print("1 - Cadastrar uma nova empresa");
    print("2 - Buscar empresa cadastrada por CNPJ");
    print("3 - Buscar empresa por CPF/CNPJ do Sócio");
    print("4 - Listar empresas cadastradas em ordem alfabética");
    print("5 - Excluir uma empresa");
    print("6 - Sair");
    stdout.write("Informe a opção que deseja: ");
    int opcao = int.parse(stdin.readLineSync()!);
    switch (opcao) {
      case 1:
        empresas=lerEmpresa(empresas);
        print("Empresa Cadastra");
        break;
      case 2:
        procurarCnpj(empresas);
      break;
      case 3: 
        procurarSocio(empresas);
      break;
      case 4:
        empresas.sort(((a, b) => a.razaoSocial.compareTo(b.razaoSocial)));
        empresas.forEach(print);
      break;
      case 5:
        removerEmp(empresas);
      break;
      case 6:
        continuar = false;
        print("Fechando o programa");
      break;
      default:
      print("Opção invalida, escolha uma das opções do menu");
    }
  }
}