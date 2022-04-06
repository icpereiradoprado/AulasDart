void main()
{
  var numerosInteiros = [1, 2, 3, 4, 5];
  inverteVetor(numerosInteiros);
}

List inverteVetor(var vetor)
{
  var vetorI = [];
  vetorI = vetor;
  var vetorInvertido = [];
  for(int i = vetorI.length ; i > 0; i--)
  {
    vetorInvertido.add(vetor[i-1]);
  }
  
  return vetorInvertido;
  
}



