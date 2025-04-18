# Projeto Flutter: Aplicativo de Hábitos Diários

## Descrição

Este é um projeto desenvolvido para a disciplina de dispositivos móveis, utilizando o Flutter. A aplicação ainda não possui integração com APIs, sendo um aplicativo básico para estudo e prática das funcionalidades do Flutter.

Os diretórios do aplicativo estarão distribuídos dessa maneira:
```
lib/
├── core/                             # Arquivos de configuração e utilitários
│   ├── themes.dart                   # Definições de temas (cores, fontes)
│   └── routes.dart                   # Definições de rotas
├── models/                           # Modelos de dados usados no app
├── modules/                          # Módulos principais do app (organizados por funcionalidade)
│   ├── habito/                       # Funcionalidade de hábitos diários
│   ├── home/                         # Tela inicial e lógica da home
│   └── splash/                       # Tela de splash e inicialização
│       ├── splash_controller.dart    # Tela de Carregamento
│       └── splash_screen.dart        # Tela de Carregamento
└── widgets/                          # Widgets reutilizáveis em várias partes do app
│       ├── app_info_dialgo.dart      # Dialog com informações básicas do APP
│       ├── drawer_wdiget.dart        # Barra lateral
│       └── habito_card.dart          # Card de Habito (exibido na Home)
├── main.dart                         # Ponto de entrada do aplicativo
```

## Instruções para Executar o Aplicativo

Para executar o aplicativo localmente, siga os passos abaixo:

1. **Clone este repositório** para sua máquina local:
    ```bash
    git clone https://github.com/FelipeMoraisOC/trabalho_dm.git
    ```

2. **Instale o Flutter**:
    Caso ainda não tenha o Flutter instalado, siga as instruções no site oficial: [Instalação do Flutter](https://flutter.dev/docs/get-started/install)

3. **Instale as dependências** do projeto:
    Navegue até a pasta do projeto no terminal e execute:
    ```bash
    flutter pub get
    ```

4. **Execute o aplicativo**:
    Para rodar o aplicativo, execute o seguinte comando no terminal:
    ```bash
    flutter run
    ```

## Funcionalidades Implementadas

- **Tela Inicial** Lista de hábitos (ordenada por horário) + Botão de Check no hábito, floatActionbutton para adicionar novo hábito;
![image](https://github.com/user-attachments/assets/7937b195-1ea5-4130-954d-5425e7209ad7)

- **Tela Cadastro Novo Hábito** Nome, descrição, horário, Imagem do Hábito;
- **Tela Descrição do Hábito** Imagem do Hábito, Visualização de Nome, Horário e Descrição;
- **Drawer com Estatísticas:**
  ```
  - DrawerHeader --- Imagem do Usuário (perfil genérico), Nome do Usuário (nome genérico)
  - Lista        --- Porcentagem geral de todos os Hábitos ex: (Total: 87%)
                 --- Hábitos e a porcetagem de cada hábito na semana
                     --- ex: Café 100%
                     --- ex: Estudar 90%
                      ...
  ```
  ![image](https://github.com/user-attachments/assets/a8cf7938-ce18-4819-adaf-5d6d66066de7)

- **AppBar** Apenas um ícone de calendário;
- **Componentes básicos do Flutter**: Uso de widgets como `Container`, `Text`, `Button`, entre outros, para estruturar a tela.

## Créditos

- **Flutter**: Framework utilizado para o desenvolvimento do aplicativo.
  
- **Erik Matheus Mazzuco**: Desenvolvimento do projeto.
- **Felipe Morais Oliveira Campos**: Desenvolvimento do projeto.
- **Joao Otavio Bazzo Zimerman**: Desenvolvimento do projeto.
