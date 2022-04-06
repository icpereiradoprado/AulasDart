class Cliente
{
  //atributos
  String _cpf, _nome;
  double _rendaMensal;
  
  //construtor
  Cliente(this._cpf, this._nome, this._rendaMensal);
  //gets e sets
  
  String getCpf()
  {
    return this._cpf;
  }
  
  void setCpf(String cpf)
  {
    this._cpf = cpf;
  }
  
  String getNome()
  {
    return this._nome;
  }
  
  void setNome(String nome)
  {
    this._nome = nome;
  }
  
  double getRendaMensal()
  {
    return this._rendaMensal;
  }
  
  void setRendaMensal(double rendaMensal)
  {
    this._rendaMensal = rendaMensal;
  }
  
  //Demais métodos
  
  String toString()
  {
    return "CPF: {$_cpf}\nNome: {$_nome}\nRenda Mensal: R\${$_rendaMensal}";
  }
  
  bool equals(Cliente cliente)
  {
    bool retorno = false;
    if(this._cpf == cliente._cpf 
       && this._nome == cliente._nome 
       && this._rendaMensal == cliente._rendaMensal)
    {
      retorno = true;
    }
    return retorno;
  }
  
  double getLimiteCredito()
  {
   return this._rendaMensal * 0.3; 
  }
  
}

void main()
{
  List<Cliente> clientes = [];
  double somaLimiteCredito = 0;
  
  Cliente cliente1 = new Cliente("123.456.789-10","Leopoldo",1000.00);
  clientes.add(cliente1);
  
  Cliente cliente2 = new Cliente("455.687.789-11","Isaac",2000.00);
  clientes.add(cliente2);
  
  Cliente cliente3 = new Cliente("789.854.562-12","Igor",3000.00);
  clientes.add(cliente3);
  
  Cliente cliente4 = new Cliente("321.741.365-13","João",4000.00);
  clientes.add(cliente4);
  
  Cliente cliente5 = new Cliente("789.254.123-14","Maria",5000.00);
  clientes.add(cliente5);
  
  Cliente cliente6 = new Cliente("200.123.698-15","Joana",6000.00);
  clientes.add(cliente6);
  
  Cliente cliente7 = new Cliente("875.210.698-16","Lindinalva",7000.00);
  clientes.add(cliente7);
  
  Cliente cliente8 = new Cliente("874.015.262-17","Carla",8000.00);
  clientes.add(cliente8);
  
  Cliente cliente9 = new Cliente("487.541.210-18","Caio",9000.00);
  clientes.add(cliente9);
  
  Cliente cliente10 = new Cliente("188.987.852-19","Gisele",10000.00);
  clientes.add(cliente10);
  
  for(Cliente cliente in clientes)
  {
    somaLimiteCredito += cliente.getLimiteCredito();
  }
  
  print("Total dos Limites de Créditos: R\$ ${somaLimiteCredito.toString()}");
  
  
}