import 'dart:io';
import 'package:projeto/empresa.dart';

void procurarCnpj(List<CadastroEmpresarial> buscarEmpresa){
  stdout.write("Informe o CNPJ da Empresa: ");
  String cnpjs = stdin.readLineSync()!;

  bool auxiliar=false;
  for (var i = 0; i < buscarEmpresa.length; i++) {
    if (cnpjs == buscarEmpresa[i].cnpj) {
      print(buscarEmpresa[i]);
      auxiliar = true;
      i = buscarEmpresa.length;      
    }
  }
  if (!auxiliar) {
    print("CNPJ não encontrado");    
  }
}

void procurarSocio(List<CadastroEmpresarial> buscarSocio){
  stdout.write("Informe o CNPJ/CPF do socio: ");
  String socios = stdin.readLineSync()!;

  bool auxiliar=false;
  for (var i = 0; i < buscarSocio.length; i++) {
    if (socios == buscarSocio[i].socio.documento) {
      print(buscarSocio[i]);
      auxiliar = true;
      i = buscarSocio.length;      
    }
  }
  if (!auxiliar) {
    print("CNPJ/CPF não encontrado");    
  }
}