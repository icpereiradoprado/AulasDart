void main()
{
  Map<String,String> ddds = Map();
  ddds["11"] = "S�o Paulo - SP";
  ddds["12"] = "S�o Jos� dos Campos - SP";
  ddds["13"] = "Santos - SP";
  ddds["14"] = "Bauru � SP";
  ddds["15"] = "Sorocaba � SP";
  ddds["16"] = "Ribeir�o Preto � SP";
  ddds["17"] = "S�o Jos� do Rio Preto � SP";
  ddds["18"] = "Presidente Prudente � SP";
  ddds["19"] = "Campinas � SP";
  ddds["21"] = "Rio de Janeiro � RJ";
  
  ddds.forEach((chave,valor)=>print("| DDD: ${chave} | Cidade: ${valor}"));
}