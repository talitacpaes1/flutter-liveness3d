# Liveness 3D - Flutter

A new Flutter plugin project.

## Getting Started

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter development, view the
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## 1. Sobre o Repositório

Este repositório é responsável pela biblioteca Pub.dev do Liveness Oiti. Com ele é possível instalar e usar as funções de FaceCaptcha e de Documentoscopia da Oititec disponíveis para aplicativos híbridos em Flutter.

## 2. Biblioteca

### PUB.dev

O pub é o gerenciador de pacotes do flutter, que contém bibliotecas e pacotes reutilizáveis para Flutter, AngularDart e programas Dart gerais.
No site [pub.dev](https://pub.dev/) é possível encontrar todos os pacotes disponíveis para instalação.

## 3. Uso (PASSO 1)

As instruções de uso, integração, implementação e customização do **Liveness Oiti** podem ser acessadas através das etapas abaixo:

### 3.1 Instalação

Usando NPM:

```sh
npm install @oiti/flutter-liveness3d
```

ou usando YARN

```sh
yarn add @oiti/flutter-liveness3d
```

### 3.2 iOS Configuração

Adicionar o Pod do FaceCaptcha no seu Podfile

```pod
pod 'FaceCaptcha', '~> 4.0.1', :source => 'https://github.com/oititec/liveness-ios-specs.git'
```

## 4. Uso no Javascript (PASSO 2)

Primeiro devemos chamar a função desejada da biblioteca '@oiti/flutter-liveness3d'

```js
import { FUNÇÕES DESEJADAS } from '@oiti/flutter-liveness3d';
```

### 4.1 Funções

#### Diagrama E2E Liveness2d

![Funções](Documentation/assets/E2Eliveness3d.png)

#### Diagrama E2E Documentoscopia

![Funções](Documentation/assets/E2Edocumentscopy.png)

AppKey: gerada na etapa 2 da [documentação CertifaceID](https://certifaceid.readme.io/docs/integra%C3%A7%C3%A3o-atualizada 'Guia de Integração API v1.2')

| Função                        | Parâmetros | Retorno                    |
| ----------------------------- | ---------- | -------------------------- |
| startLiveness3d("APP KEY");   | AppKey     | RESULT_OK, RESULT_CANCELED |
| startDocumentscopy("APP KEY") | AppKey     | RESULT_OK, RESULT_CANCELED |

### 4.2 Exemplo de uso

Após efetuar a importação da biblioteca, deve ser aplicada a app Key gerada dentro do parâmetro da função desejada. No exemplo abaixo chamamos a função quando clicamos no botão "Liveness 3D" ou "Documentoscopia":

```js
const options = { 
    appkey: appKey, 
    environment: '.HML', 
    baseUrl: 'https://comercial.certiface.com.br:8443/', 
    apparence: { 
      backgroundColor: '#025951', 
      loadingColor: '#0CF25D', 
    }, 
    liveness3Dtext: { 
      READY_HEADER_1: 'Prepare-se para seu',
      READY_HEADER_2: 'reconhecimento facial.', 
      READY_MESSAGE_1: 'Posicione o seu rosto na moldura, aproxime-se', 
      READY_MESSAGE_2: 'e toque em começar.', 
      READY_BUTTON: 'Começar', 
      
      RETRY_HEADER: 'Vamos tentar novamente?', 
      RETRY_SUBHEADER: 'Siga o exemplo de foto ideal abaixo:', 
      RETRY_MESSAGE_SMILE: 'Expressão Neutra, Sem Sorrir', 
      RETRY_MESSAGE_LIGHTING: 'Evite reflexos e iluminação extrema.', 
      RETRY_MESSAGE_CONTRAST: 'Limpe Sua Câmera', 
      RETRY_YOUR_PICTURE: 'Sua foto', 
      RETRY_IDEAL_PICTURE: 'Foto ideal', 
      RETRY_BUTTON: 'Tentar novamente', 
      
      RESULT_UPLOAD_MESSAGE: 'Enviando...', 
      RESULT_SUCCESS_MESSAGE: 'Sucesso', 
      
      FEEDBACK_CENTER_FACE: 'Centralize Seu Rosto', 
      FEEDBACK_FACE_NOT_FOUND: 'Enquadre o Seu Rosto', 
      FEEDBACK_FACE_NOT_LOOKING_STRAIGHT_AHEAD: 'Olhe Para Frente', 
      FEEDBACK_FACE_NOT_UPRIGHT: 'Mantenha a Cabeça Reta', 
      FEEDBACK_HOLD_STEADY: 'Segure Firme', 
      FEEDBACK_MOVE_PHONE_AWAY: 'Afaste-se', 
      FEEDBACK_MOVE_PHONE_CLOSER: 'Aproxime-se', 
      FEEDBACK_MOVE_PHONE_TO_EYE_LEVEL: 'Telefone ao Nível dos Olhos', 
      FEEDBACK_USE_EVEN_LIGHTING: 'Ilumine Seu Rosto Uniformemente', 
      
      FEEDBACK_FRAME_YOUR_FACE: 'Encaixe Seu Rosto no Espaço Oval', 
      FEEDBACK_HOLD_STEADY_1: 'Aguente Firme: 1', 
      FEEDBACK_HOLD_STEADY_2: 'Aguente Firme: 2', 
      FEEDBACK_HOLD_STEADY_3: 'Aguente Firme: 3', 
      FEEDBACK_EYES_STRAIGHT_AHEAD: 'Olhe Para Frente', 
      FEEDBACK_REMOVE_DARK_GLASSES: 'Tire Seus Óculos de Sol', 
      FEEDBACK_NEUTRAL_EXPRESSION: 'Fique Neutro, Não Sorria', 
      FEEDBACK_CONDITIONS_TOO_BRIGHT: 'Ambiente Muito Iluminado', 
      FEEDBACK_BRIGHTEN_YOUR_ENVIRONMENT: 'Ambiente Muito Escuro', 
    }, 
  };
```
| **Atributo**                      | **Tipo** | **Descrição**                                             |
| :-------------------------------- | :------- | :-------------------------------------------------------- |
| appkey     |    | Chave de acesso.                     |
| environment    |     |  |
| baseUrl     |  |                          |
| backgroundColor |  | Modifica a cor de fundo do frame.                         |
| loadingColor |  | Modifica a cor do ícone loading.                         |


## 5. Customização (PASSO 3)

### Liveness3D

- [(iOS)Guia de estilização do Liveness3D](Documentation/xmlCUSTOMIZATION.md.md);

### Documentoscopia

- [(iOS)Guia de estilização da Documentoscopia](Documentation/liveness3DThemeiOSCUSTOMIZATION.md);

## 6. Como executar o clone do Repositório?

Execute o clone do repositório abaixo para clonar o código:

```sh
git clone https://github.com/oititec/liveness3d-bridge-rn
```

## 7. Como rodar o Script?

Para rodar o script desse repositório você deve instalar as dependências do projeto, então na pasta root do projeto clonado rodar o comando.

### 7.1 Yarn

```sh
yarn
```

### 7.2 Executar Projeto

> Executar sempre em dispositivos físicos e não no simulador do iOS e Android
Yarn

```sh
yarn example android
```

```sh
yarn example ios
```

