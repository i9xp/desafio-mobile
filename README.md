<h1 align="center">
  Teste Mobile - i9xp
</h1>

# Motivação
O funcionamento desta aplicação é baseado em ecommerce com foco no funcionamento do fluxo de compras. Usei este projeto como um desafio para testar minhas habilidades como desenvolvedor e aprimorar o conhecimento em Flutter. Particularmente, estou bastante contente com o resultado, espero que gostem também.

<img src="https://github.com/joaovirgili/desafio-mobile/blob/master/files/gif_1.gif?raw=true" width="150"/>
<img src="https://github.com/joaovirgili/desafio-mobile/blob/master/files/gif_2.gif?raw=true" width="150"/>
<img src="https://github.com/joaovirgili/desafio-mobile/blob/master/files/gif_3.gif?raw=true" width="150"/>

# Como rodar o app?

### 1. Certifique-se de ter o Flutter instalado: https://flutter.dev/

### 2. Faça o clone do projeto e vá para a pasta raiz.

### 3. Execute o comando `flutter pub get` para baixar as dependências.

### 4. Certifique-se de ter um emulador gerado ou um celular plugado com Ferramentas de Desenvolver ativadas.

### 5. Pronto. Para rodar em modo debug, execute o comando `flutter run` ou em modo release `flutter run --release`. Para gerar o apk, execute `flutter build apk`.

# :rocket: APK

### Se por alguma razão não conseguiu executar o app, o apk `i9xp.apk` para a instalação do mesmo se encontra na pasta `files` na raiz do projeto.


<br>

# :computer: Implementação

## Tecnologias utilizadas

### 1. Flutter Modular (https://github.com/Flutterando/modular) para arquitetura.
### 2. Mobx (https://pub.dev/packages/mobx) para state management.
### 3. Slidy (https://github.com/Flutterando/slidy) como ferramenta. 
### 4. Hive (https://pub.dev/packages/hive) para banco local.
#### Gosto muito da estruturação abordada no Modular (inspirado no Angular) e da simplicidade ao lidar com reatividade com o Mobx. Slidy não faz parte da implementação, mas é uma ferramente que agiliza bastante o processo de criação de Pages, Modules, Services, etc.. A comunidade do Flutterando tem feito um ótimo trabalho na manutenção dessas ferramentas.

## :star_struck: Bônus
Este projeto foi, em sua maior parte, implementado usando Flutter para `macos`. Apenas parei de usar pois o `Hive`, no qual utilizo como banco local, está com problema com as dependências em relação ao Flutter no channel `dev` (requerido para utilizar `macos`). Foi uma experiência muito boa fazer a implementação para `macos` e ver o quão maduro está mesmo estando no channel `dev`.

## :mailbox_with_mail: Licença

Este projeto foi criado para estudo, sinta-se a vontade para testá-lo e utilizá-lo.
