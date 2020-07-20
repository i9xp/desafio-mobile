# Teste Mobile i9XP - Marcelo Freitas
Este projeto é um desafio proposto pela empresa i9XP, o objetivo do projeto é testar minhas habilidades e conhecimentos como desenvolvedor de Flutter.
Sua principal funcionalidade é baseada em um e-commerce com foco no funcionamento de um fluxo de compras simples: Home -> Produto -> Carrinho -> Checkout.
O mesmo foi desenvolvido pensando nos princípios básicos do SOLID, usando boas práticas de programação, arquitetura e conceitos.

### Technologies
O projeto foi desenvolvido utilizando as seguintes tecnologias:
* [Modular](https://github.com/Flutterando/modular) - Injeção de Dependência, Rotas e Disposable Singleton
* [MobX](https://github.com/mobxjs/mobx.dart) - Gerenciamento de Estado
* [Hive](https://github.com/hivedb/hive) - Local Storage
* [DIO](https://github.com/flutterchina/dio) - Async HTTP Service
* [MockAPI](https://mockapi.io) - Site para criação de APIs mockadas
* [Mockito](https://github.com/dart-lang/mockito) - Mock Unit Test

### Features
* Lista de categorias, campanhas e produtos
* Lista de produtos
* Adicionar produto selecionado ao carrinho (banco de dados local)
* Exibir carrinho com os produtos
* Remover produto do carrinho
* Atualizar quantidade de itens
* Cálculo do valor total do pedido
* Checkout (limpa o banco de dados local)

### Installation

1. Caso não tenha o flutter instalado, [clique aqui](https://flutter.dev/docs/get-started/install/) e leia sua documentação.
2. Faça o clone do projeto e vá para a pasta raiz.
3. Execute o comando ```flutter pub get``` para baixar as dependências.
4. Execute o comando ```flutter run```.