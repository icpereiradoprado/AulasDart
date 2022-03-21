abstract class Poligono{
  //atributos
  static int _nroPoligonos = 0;
  int _nroLados;
  
  //construtor
  Poligono(this._nroLados);
  
  //gets e sets
  
  //demais metodos
  
  double getArea();
  double getPerimetro();
  
  String toString(){
    return "Número de polígonos instânciados: $_nroPoligonos\nNúmero de Lados do Polígono: $_nroLados";
  }
      
}

class Quadrado extends Poligono{
  //atributos
  int _lado;
  
  //construtor
  Quadrado(nroLados,this._lado):super(nroLados);
  
  double getArea(){
    return this._lado.toDouble() * this._lado.toDouble();
  }
  
  double getPerimetro(){
    return 4 * this._lado.toDouble();
  }
  
  bool equals(Quadrado quadrado){
    bool retorno = false;
    if(quadrado._lado == this._lado){
      retorno = true;
    }
    return retorno;
  }
  
  String toString(){
    return super.toString()+" Tamanho do lado: $_lado";
  }
}

class Triangulo extends Poligono{
  //atributos
  int _lado1, _lado2, _lado3;
  
  //cosntrutor
  Triangulo(nroLados,this._lado1,this._lado2,this._lado3):super(nroLados);
  
  //demais métodos
  bool eTriangulo(){
    bool retorno = false;
    int soma1 = this._lado1 + this._lado2;
    int soma2 = this._lado1 + this._lado3;
    int soma3 = this._lado2 + this._lado3;
    if(soma1 > this._lado3 || soma2 > this._lado2 || soma3 > this._lado1){
      retorno = true;
    }
    return retorno;
  }
  
  double getArea(){
    int maiorLado = 0, menorLado = 0;
    if(this._lado1 > this._lado2 && this._lado1 > this._lado3 && this._lado2 > this._lado3){
      maiorLado = this._lado1;
      menorLado = this._lado3;
    }else if(this._lado1 > this._lado2 && this._lado1 > this._lado3 && this._lado2 < this._lado3){
      maiorLado = this._lado1;
      menorLado = this._lado2;
    }else if(this._lado2 > this._lado1 && this._lado2 > this._lado3 && this._lado1 > this._lado3){
      maiorLado = this._lado2;
      menorLado = this._lado3;
    }else if(this._lado2 > this._lado1 && this._lado2 > this._lado3 && this._lado1 < this._lado3){
      maiorLado = this._lado2;
      menorLado = this._lado1;
    }else if(this._lado3 > this._lado1 && this._lado3 > this._lado2 && this._lado1 > this._lado2){
      maiorLado = this._lado3;
      menorLado = this._lado2;
    }else{
      maiorLado = this._lado3;
      menorLado = this._lado1;
    }
    return (menorLado.toDouble() * maiorLado.toDouble())/2;
  }
  
  double getPerimetro(){
    return this._lado1.toDouble() + this._lado2.toDouble() + this._lado3.toDouble();
  }
  
  String toString(){
    return super.toString()+"\nLado1: $_lado1\nLado2: $_lado2\nLado3: $_lado3";
  }
  
  bool equals(Triangulo triangulo){
    bool retorno = false;
    if((this._lado1 == triangulo._lado1 && this._lado2 == triangulo._lado2 && this._lado3 == triangulo._lado3)
        ||(this._lado1 == triangulo._lado2 && this._lado2 == triangulo._lado1 && this._lado3 == triangulo._lado3)
        ||(this._lado1 == triangulo._lado3 && this._lado2 == triangulo._lado1 && this._lado3 == triangulo._lado2)
        ||(this._lado1 == triangulo._lado3 && this._lado2 == triangulo._lado2 && this._lado3 == triangulo._lado1)
        ){
      retorno = true;
    }
    return retorno;
  }
  
}
  
  
  
void main(){
  Quadrado quadrado1 = new Quadrado(4,6);
  Quadrado quadrado2 = new Quadrado(4,6);
  
  Triangulo triangulo1 = new Triangulo(3,4,5,3);
  Triangulo triangulo2 = new Triangulo(3,3,5,5);
  
  print("A área do quadrado1 é: "+quadrado1.getArea().toString());
  print("O perímetro do quadrado1 é: "+quadrado1.getPerimetro().toString());
  print("Quadrado1: " + quadrado1.toString());
  print("Quadrado2: " + quadrado2.toString());
  print("O quadrado1 é igual ao quadrado2? " + quadrado1.equals(quadrado2).toString());
  print("\n========================Triângulo========================\n");
  print("A área do triângulo1 é: "+triangulo1.getArea().toString());
  print("O perímetro do triangulo1 é: "+triangulo1.getPerimetro().toString());
  print("A área do triângulo2 é: "+triangulo2.getArea().toString());
  print("O perímetro do triangulo2 é: "+triangulo2.getPerimetro().toString());
  print("Triângulo1: " + triangulo1.toString());
  print("Triângulo2: " + triangulo2.toString());
  print("O triângulo1 é igual ao triângulo2? " + triangulo1.equals(triangulo2).toString());
  
}