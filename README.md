## Getting Started

### Minimum Requirements
* Flutter (Channel stable, v1.12.13+hotfix.9
* Mac OS X 10.14.6 
* Dart version 2.7.2
* Internet connection
* XCode and Xcode command line

#### Run "flutter doctor" for information about installing additional components.

## Runnig the app

### First of all, open ios simulator if it's not opened yet
$ open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app/

### Use scripts to speed up the configuration and run the app, or type manually this in terminal:
#### PAY ATTENTION: Make sure you are in the root folder of the project [desafio-mobile]
$ cd i9xp_visual_pkg && flutter pub get && cd ../i9xp_app && flutter pub get && flutter run -t lib/main_dev.dart && cd ../

### Running scripts in order to run the app on ios simulator in devevelopment or production mode:
$ run_ios.sh dev
$ run_ios.sh prod

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
