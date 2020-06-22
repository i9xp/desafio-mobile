## Getting Started

### Minimum Requirements
* Flutter (Channel stable, v1.12.13+hotfix.9
* Mac OS X 10.14.6 
* Dart version 2.7.2
* Internet connection
* XCode and Xcode command line

#### Run "flutter doctor" for information about installing additional components.

### Sobre
O projeto possui 2 bibliotecas internas, uma para serviços [i9xp_services] e outra para componentes visuais compartilháveis [i9xp_visual]
O projeto utiliza geradores de código para jsons e para Stores do State Managment MobX. Por isso será necessário executar o comando abaixo ou usar o script que acessa todos os projetos e gera os códigos de forma recursiva.
`$ flutter pub run build_runner build --delete-conflicting-outputs`
`$ sh build_runner.sh`

## Excutando a aplicação

### Abra o simulador do iPhone antes de rodar o aplicativo
$ open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app/

### Execute o comando de geração de arquivos na raiz de cada um dos 3 projetos
Na pasta i9xp_app `$ flutter pub run build_runner build --delete-conflicting-outputs`
Na pasta i9xp_services `$ flutter pub run build_runner build --delete-conflicting-outputs`
Na pasta i9xp_visual `$ flutter pub run build_runner build --delete-conflicting-outputs`

### Você pode usar os scripts para gerar apk ou rodar o aplicativo em um dispositivo
`$ sh run_app.sh`
`$ run_app.sh dev`
`$ run_app.sh prod`

`$ sh build_apk.sh`

#### Alternativamente você pode rodar o aplicativo via terminal usando o comando abaixo:
#### No diretório raiz [desafio-mobile] digite o comando abaixo
`$ cd i9xp_visual_pkg && flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs && cd ../i9xp_services_pkg && flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs && cd ../i9xp_app && flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs && flutter run -t lib/main_dev.dart && cd ../`

Baixar apk: https://drive.google.com/file/d/1nZTVP0TJvyKWKclXb5jAcduZ_4Z4o4eE/view?usp=sharing
---------------------

## Instruções

 - Faça um fork deste projeto
 - Crie seu projeto a partir deste fork
 - Use mensagens de commits claras, coesas e que deixem claro a linha do tempo e evolução do código. 
 - Ao Finalizar mande um merge request para o repo principal com instruções para rodar e gerar os binários

## Requerimentos
 
 - O app deve ser escrito preferencialmente usando Flutter (https://flutter.dev/).
 - Faça uso de boas práticas de desenvolvimento
 - Use conceitos de componentização e reaproveitamento
 - Crie um fluxo de compra mínimo: O aplicativo deve ser capaz de navegar entre as telas (Home, Página de Produto e Carrinho Lateral)
 - Ao tocar em adicionar um produto ao carrinho. o item deve ser adicionado ao carrinho e a tela do carrinho deve serm mostrada com a informação atualizada


## Desejável
 
 - Possuir algum teste unitário ou e2e
 - Documentação

## Design

 - Link Adobe XD (https://xd.adobe.com/view/e1881f99-b431-43bc-6e6d-aab53f5b5217-97b9/)

## Bonus
 - Faça chamadas de API usando algum serviço de mock 
 - Persistencia: Ao fechar o aplicativo os produtos devem permaneer no carrinho
 - Fazer uso de algum state manegement (https://flutter.dev/docs/development/data-and-backend/state-mgmt/intro)
