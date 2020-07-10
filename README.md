# Teste Mobile

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




## Descritivo Execução do Desafio
 - Etapa 01 - Definição Arquitetura e Fetures
    Nesta etapa foi anaalisada a proposta do desafio e optado pela utilização do Flutter_Bloc para controle da regra de negócio do produto.
    As Fetures foram segmentadas pelas entidades identificadas (Category, Cart, Product, Messages, Notifications).

 - Etapa 02 - Criação base Projeto
    Criado o projeto com framework Flutter com o devido nome da organização (br.com.i9xp....).
    Determinda uma configuração básica do Linter para facilitar padrões a serem seguidos no projeto.
    Criação de diretório para utilização dos Assests (icones, imagens e fonts). Obs: Algumas imagens por mais que adicionadas foram utilizadas via request http direto do GitHub.
    Import e preparo do Bloc_Test para teste unitario de cada bloc.
    Definição da classe de consumo HTTP padronizado.
    Criação de quatro endpoints mocados com https://mockapi.io/. Obs: arquivo json no repositorio para os json's utilizados no mock.
    Definido também quais seriam os widget reutilizaveis com a identidade do produto e o thema centrlaizado. Qualquer necessidade de alteração devido a nova campanha o unico arquivo pode ser editado para propagação no resto do aplicativo quanto a cores, fontes e o que mais for necessário controlar.

 - Etapa 03 - Criação Página Home
    Foram criadas as Fetures Category e Dashboard para usa na HomePage. Foram seradas e com o consumo dinamico das imagens para que possa adequar com as campanhas. Caso necessário adicinar, remover ou alterar categorias, banners ou produtos em destaque não sera necessário alterar o codigo fonte do App apenas dados de retorno da API.

 - Etapa 04 - Criação Pagina de Produtos
    Foi criada uma pagina padronizada para que se adeque a qualquer produto que precise ser exibido, com possibilidade de multi imagens de exibição assim como separar em 3 abas para exibir separadamente os Review, Detalhes e Descrição do produto.
    Reutilizando os Blocs de Notificação e Mensagem como possivel acompanhar pelo icones no topo da página.
 
 - Etapa 05 - Criação Página Cart
    Criado a Feature Cart para que controle os itens selecionado pelo usuário e ao termino consolidar o pedido.
    Este item foi concluido com os Mocks devido ao tempo.

 - Proximas etapas como testes end-to-end , publicação interna para teste e separação dos ambientes (Dev, Hml e Prd) não foram concluidos...