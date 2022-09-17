import 'dart:io';
import 'package:projeto/empresa.dart';

void removerEmp(List<CadastroEmpresarial> excluirEmp){
  stdout.write("Informe o ID da empresa que deseja excluir: ");
  String id = stdin.readLineSync()!;

  bool auxiliar = false;
  for (var i = 0; i < excluirEmp.length; i++) {
    if (id == excluirEmp[i].id) {
      excluirEmp.remove(excluirEmp[i]);
      print("Empresa excluida!");
      auxiliar = true;
      i = excluirEmp.length;
    }
  }
  if (!auxiliar) {
    print("ID não encontrado!");
  }
}