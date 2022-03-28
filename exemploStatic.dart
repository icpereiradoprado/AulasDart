class ContaCorrente{
  //atributos
  static double _saldoBanco = 0.0;
  double _saldoConta = 0.0;
  
  //cosntrutor
  ContaCorrente();
  
  //gets e sets
  double getSaldoConta(){
    return _saldoConta;
  }
  
  static double getSaldoBanco(){
    return _saldoBanco;
  }
  
  //demais metodos
  
  bool depositar(double valor){
    bool retorno = false;
    if(valor > 0){
      _saldoBanco+=valor;
      _saldoConta+= valor;
      retorno = true;
    }
    return retorno;
  }
  
  bool retirar(double valor){
    bool retorno = false;
    if(valor > 0){
      _saldoBanco -= valor;
      _saldoConta-= valor;
      retorno = true;
    }
    return retorno;
  }
  
  
}

void main(){
  ContaCorrente conta1 = new ContaCorrente();
  ContaCorrente conta2 = new ContaCorrente();
  
  conta1.depositar(1500.50);
  conta2.depositar(2000.00);
  print(conta1.getSaldoConta());
  print(conta2.getSaldoConta());
  print(ContaCorrente.getSaldoBanco());
  
  conta2.retirar(500);
  print(conta2.getSaldoConta());
  print(ContaCorrente.getSaldoBanco());
  
}