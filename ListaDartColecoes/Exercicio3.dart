void main()
{
  Map<String,String> ddds = Map();
  ddds["11"] = "São Paulo - SP";
  ddds["12"] = "São José dos Campos - SP";
  ddds["13"] = "Santos - SP";
  ddds["14"] = "Bauru – SP";
  ddds["15"] = "Sorocaba – SP";
  ddds["16"] = "Ribeirão Preto – SP";
  ddds["17"] = "São José do Rio Preto – SP";
  ddds["18"] = "Presidente Prudente – SP";
  ddds["19"] = "Campinas – SP";
  ddds["21"] = "Rio de Janeiro – RJ";
  
  ddds.forEach((chave,valor)=>print("| DDD: ${chave} | Cidade: ${valor}"));
}