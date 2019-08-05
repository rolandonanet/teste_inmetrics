Teste Inmetrics

Introução
Essa aplicação tem por objetivo o teste da api da regress e front-end da php travels.

Como executar:

1-Forma:
Caso tenha o ambiente do ruby em sua maquina basta utilizar o comando abaixo tanto na pasta de "ui" quanto na de "api" para instalar 
as gems.
Setup:
```
gem intall bundle
```
Execução:
Para o teste de api basta execuxar o comando abaixo dentro do diretório.
```
cucumber
```
E para o de ui bastar seguir o mesmo processo com o comando abaixo.
```
cucumber chrome=true
```
Pronto sua automação foi executada com sucesso.

2-Forma:
Caso não tenha o ambiente ná maquina, basta executar os dois shells scripts abaixo para roda-las dentro de um container.

Front
```
echo "Cria Imagem"
docker build --no-cache -t teste .
echo "Executa imagem nova"
docker run -i --name teste -v /tmp/.X11-unix:/tmp/.X11-unix -v $PWD:/usr/src/app teste bash -c "cucumber chrome_headless=true chrome=true"

zip -r reports.zip data/reports/*

docker rm teste
```
Para o teste de API basta retirar o seguinte trecho "cucumber chrome_headless=true chrome=true" e trocar por "cucumber"
Autor
Gabriel Roland
