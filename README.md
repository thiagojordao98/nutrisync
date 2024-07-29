<h1 align="center">
     🍃 <a href="#" alt="site do ecoleta"> NutriSync </a>
</h1>

<p align="center">
    <img src="https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54" alt="Python">
    <img src="https://img.shields.io/badge/django-%23092E20.svg?style=for-the-badge&logo=django&logoColor=white" alt="Django">
    <img src="https://img.shields.io/badge/-boostrap-0D1117?style=for-the-badge&logo=bootstrap&labelColor=0D1117" alt="Bootstrap">
    <img src="https://img.shields.io/badge/License-MIT-green.svg?style=for-the-badge" alt="License: MIT">
</p>

<h4 align="center">
	🚧   Em Desenvolvimento 🚀 🚧
</h4>

## Sumário

- [Sumário](#sumário)
- [Layout](#layout)
- [Sobre o Projeto](#sobre-o-projeto)
- [Funcionalidades](#funcionalidades)
- [Tecnologias Utilizadas](#tecnologias-utilizadas)
- [Requisitos](#requisitos)
- [Instalação](#instalação)
- [Uso](#uso)
- [Licença](#licença)
- [Contato](#contato)


## Layout
![image](https://github.com/user-attachments/assets/6fa52ef7-45ca-4b15-a777-5d1b2a2bf76b)
![image](https://github.com/user-attachments/assets/5ffd97fd-becd-4669-a218-81a414f9700c)
![image](https://github.com/user-attachments/assets/7a5c09c2-e468-43a8-97a4-9a5dfdf1aba3)
![image](https://github.com/user-attachments/assets/8086c913-310d-4ddf-bfd0-6852c432818b)

## Sobre o Projeto
NutriSync é uma plataforma inovadora projetada exclusivamente para nutricionistas, oferecendo uma solução completa para o gerenciamento de pacientes. Com NutriSync, você pode facilmente cadastrar novos pacientes, acompanhar o progresso nutricional e adaptar planos alimentares personalizados.

## Funcionalidades

- **Cadastro de Pacientes:** Adicione novos pacientes com informações detalhadas.
- **Acompanhamento Nutricional:** Monitore o progresso nutricional dos pacientes ao longo do tempo.
- **Planos Alimentares Personalizados:** Crie e adapte planos alimentares de acordo com as necessidades individuais dos pacientes.

## Tecnologias Utilizadas

- **Django:** Framework web principal para desenvolvimento do backend.
- **SQLite:** Banco de dados padrão para desenvolvimento e testes (pode ser substituído por PostgreSQL ou outro).
- **HTML/CSS:** Estrutura e estilo das páginas web.
- **JavaScript:** Funcionalidades interativas no frontend.
- **Bootstrap:** Framework de CSS para design responsivo e componentes estilizados.

## Requisitos

- Python 3.8+
- Django 4.0+
- Python 3.8+
- Django 4.0+
- Virtualenv (opcional, mas recomendado)

## Instalação

1. Clone o repositório para sua máquina local:
    ```bash
    git clone https://github.com/thiagojordao98/nutrisync.git
    ```
2. Navegue até o diretório do projeto:
    ```bash
    cd nutrisync
    ```
3. Crie um ambiente virtual (opcional, mas recomendado):
    ```bash
    python3 -m venv venv
    source venv/bin/activate  # No Windows use `venv\Scripts\activate`
    ```
4. Instale as dependências:
    ```bash
    pip install -r requirements.txt
    ```
5. Realize as migrações do banco de dados:
    ```bash
    python manage.py migrate
    ```
6. Inicie o servidor de desenvolvimento:
    ```bash
    python manage.py runserver
    ```
7. Acesse a aplicação no navegador:
    ```
    http://localhost:8000/auth/cadastro
    ```

## Uso

1. **Cadastro de Pacientes:**
    - Navegue até a seção de pacientes e clique em "Adicionar Novo Paciente".
    - Preencha as informações necessárias e salve.

2. **Acompanhamento Nutricional:**
    - Selecione um paciente da lista.
    - Adicione e visualize registros de progresso nutricional.

3. **Planos Alimentares Personalizados:**
    - Acesse o perfil de um paciente.
    - Crie ou edite planos alimentares com base nas necessidades do paciente.

## Licença

Este projeto está licenciado sob a licença MIT - veja o arquivo [LICENSE](LICENSE) para mais detalhes.

## Contato

Para mais informações, entre em contato em [thiagojordao.dev@gmail.com](mailto:thiagojordao.dev@gmail.com).
