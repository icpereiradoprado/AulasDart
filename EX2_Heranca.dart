class Produto{
  
  //atributos
  String _codigoBarras,_descricao;
  double _precoVenda;
  int _quantidadeEstoque;
  
  //construtor
  Produto(this._codigoBarras,this._descricao,this._precoVenda,this._quantidadeEstoque);
  
  //gets e sets
  
  String getCodigoBarras(){
    return this._codigoBarras;
  }
  
  void setCodigoBarras(String codigoBarras){
    this._codigoBarras = codigoBarras;
  }
  
  String getDescricao(){
    return this._descricao;
  }
  
  void setDescricao(String descricao){
    this._codigoBarras = descricao;
  }
  
  double getPrecoVenda(){
    return this._precoVenda;
  }
  
  void setPrecoVenda(double precoVenda){
    this._precoVenda = precoVenda;
  }
  
  int getQuantidadeEstoque(){
    return this._quantidadeEstoque;
  }
  
  void setQuantidadeEstoque(int quantidadeEstoque){
    this._quantidadeEstoque = quantidadeEstoque;
  }
  
  //demais metodos
  
  bool comprar(int quantidade){
    bool retorno = false;
    if(quantidade > 0){
      this._quantidadeEstoque += quantidade;
      retorno = true;
    }
    return retorno;
  }
  
  bool vender(int quantidade){
    bool retorno = false;
    if(quantidade <= getQuantidadeEstoque()){
      this._quantidadeEstoque-=quantidade;
      retorno = true;
    }
    return retorno;
  }
  
  String toString(){
    return "Código de Barras: $_codigoBarras\nDescrição: $_descricao\nPreço de Venda: $_precoVenda\nQuantidade em Estoque: $_quantidadeEstoque";
  }
  bool equals(Produto produto){
    bool retorno = false;
    if(this._codigoBarras == produto._codigoBarras 
       && this._descricao == produto._descricao 
       && this._precoVenda == produto._precoVenda 
       && this._quantidadeEstoque == produto._quantidadeEstoque)
    {
      retorno = true;
    }
    return retorno;
  }
}

class Livro extends Produto{
  //atributos
  String _titulo,_autor,_editora;
  
  //construtor
  Livro(codigoBarras,descricao,precoVenda,quantidadeEstoque, this._titulo,this._autor,this._editora)
    :super(codigoBarras,descricao,precoVenda,quantidadeEstoque);
  
  //gets e sets
  
  String getTitulo(){
    return this._titulo;
  }
  
  void setTitulo(String titulo){
    this._titulo = titulo;
  }
  
  String getAutor(){
    return this._autor;
  }
  
  void setAutor(String autor){
    this._autor = autor;
  }
  
  String getEditora(){
    return this._editora;
  }
  
  void setEditora(String editora){
    this._editora = editora;
  }
  
  //demais metodos
  
  String toString(){
    return super.toString() + "\nTítulo: $_titulo\nAutor: $_autor\nEditora: $_editora";
  }
  
  bool equals1(Livro livro){
    bool retorno = false;
    if(super.equals(livro) && (this._autor == livro.getAutor())
      && (this._titulo == livro.getTitulo()) 
      && (this._editora == livro.getEditora()))
    {
      retorno = true;
    }
    return retorno;
  }
  
  
}

class Jogo extends Produto{
  //atributos
  String _titulo, _console;
  
  //Construtor
  Jogo(codigoBarras,descricao,precoVenda,quantidadeEstoque,this._titulo,this._console)
    :super(codigoBarras,descricao,precoVenda,quantidadeEstoque);
  
  //gets e sets
  
  String getTitulo(){
    return this._titulo;
  }
  
  void setTitulo(String titulo){
    this._titulo = titulo;
  }
  
  String getConsole(){
    return this._console;
  }
  
  void setConsole(String console){
    this._console = console;
  }
  
  //demais metodos
  
    String toString(){
    return super.toString() + "\nTítulo: $_titulo\nConsole: $_console";
  }
  
  bool equals2(Jogo jogo){
    bool retorno = false;
    if(super.equals(jogo) && this._titulo == jogo.getTitulo()
      && this._console == jogo.getConsole())
    {
      retorno = true;
    }
    return retorno;
  }
  
}

void main(){
  Produto produto1 = new Produto("1478522","Mouse Gamer",89.90,20);
  Produto produto2 = new Produto("1478522","Mouse Comum",89.90,20);
  
  Livro livro1 = new Livro("14123","Livro de Aventura",24.90,10,"Rangers: Ordem dos arqueiros","Julio César","Livro Aberto");
  Livro livro2 = new Livro("14123","Livro de Aventura",24.90,10,"Rangers: Ordem dos arqueiros","Julio César","Livro Aberto");
  
  Jogo jogo1 = new Jogo("456987","FPS",35.90,50,"Apex Legends","X-box");
  Jogo jogo2 = new Jogo("456987","Terror",47.00,10,"Silent Hill","X-box");
  
  print("---- PRODUTO ----\n");
  print(produto1.toString());
  print(produto1.comprar(40));
  print("\n"+produto1.toString());
  print(produto1.vender(60));
  print("\n"+produto1.toString());
  print("\nO produto criado é igual ao produto passado como parâmetro? " + produto1.equals(produto2).toString());
  print("\n-------------------------------------------\n");
  
  print("---- LIVRO ----\n");
  print(livro1.toString());
  print(livro1.comprar(20));
  print("\n"+livro1.toString());
  print(livro1.vender(60));
  print("\n"+livro1.toString());
  print("\nO livro criado é igual ao livro passado como parâmetro? " + livro1.equals(livro2).toString());
  print("\n-------------------------------------------\n");
  
  print("---- JOGO ----\n");
  print(jogo1.toString());
  print(jogo1.comprar(20));
  print("\n"+jogo1.toString());
  print(jogo1.vender(60));
  print("\n"+jogo1.toString());
  print("\nO jogo criado é igual ao jogo passado como parâmetro? " + jogo1.equals(jogo2).toString());
  print("\n-------------------------------------------\n");
  
  
}
