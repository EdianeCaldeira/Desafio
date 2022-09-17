class Endereco{
  String logradouro;
  String bairro;
  String numero;
  String estado;
  String cep;
  String complemento;

  Endereco(this.logradouro, this.numero, this.bairro, this.complemento, this.estado, this.cep);

  String ceps(){
    return("${cep.substring(0,6)}-${cep.substring(5,8)}");
  }

  @override
  String toString() {
    return "Endereço: $logradouro, $numero, $complemento, $bairro/$estado, ${ceps()}";
  }
}