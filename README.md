# Projeto Flutter: Aplicativo de Hábitos Diários

## Descrição

Este é um projeto desenvolvido para a disciplina de dispositivos móveis, utilizando o Flutter. A aplicação ainda não possui integração com APIs, sendo um aplicativo básico para estudo e prática das funcionalidades do Flutter.

Os diretórios do aplicativo estarão distribuídos dessa maneira:
```
lib/
├── main.dart                 # Ponto de entrada do aplicativo
├── app.dart                  # Configurações principais do app (temas, rotas, etc)
├── core/                     # Arquivos de configuração e utilitários
│   ├── constants.dart        # Constantes globais do app
│   ├── utils.dart            # Funções utilitárias
│   ├── themes.dart           # Definições de temas (cores, fontes)
│   └── routes.dart           # Definições de rotas
├── features/                 # Funcionalidades específicas do app
│   ├── funcionabilidade_x/   # Funcionalidade relacionada aos hábitos diários
│   │   ├── data/             # Modelos de dados, repositórios e fontes de dados
│   │   ├── domain/           # Lógica de negócios (use cases, serviços)
│   │   └── presentation/     # Camada de UI (telas, widgets, controle de estado)
│   └── funcionabilidade_y/   # Outra funcionalidade, por exemplo, usuário
│       ├── data/        
│       ├── domain/
│       └── presentation/
└── widgets/                  # Widgets reutilizáveis em várias partes do app
```

## Instruções para Executar o Aplicativo

Para executar o aplicativo localmente, siga os passos abaixo:

1. **Clone este repositório** para sua máquina local:
    ```bash
    git clone https://github.com/seu-usuario/nome-do-repositorio.git
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
- **AppBar** Apenas um ícone de calendário;
- **Componentes básicos do Flutter**: Uso de widgets como `Container`, `Text`, `Button`, entre outros, para estruturar a tela.

## Créditos

- **Flutter**: Framework utilizado para o desenvolvimento do aplicativo.
  
- **Erik Matheus Mazzuco**: Desenvolvimento do projeto.
- **Felipe Morais Oliveira Campos**: Desenvolvimento do projeto.
- **Joao Otavio Bazzo Zimerman**: Desenvolvimento do projeto.

Se houver mais contribuições, mencione-as aqui!

