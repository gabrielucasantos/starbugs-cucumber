# ☕ Starbugs - Automação de Testes

Este projeto é uma automação completa de testes para a aplicação web Starbugs, desenvolvida com Ruby e Cucumber. Aqui você encontra uma implementação robusta de testes end-to-end que cobre todo o fluxo de compra de cafés, desde a navegação no catálogo até a finalização do pedido.

## 🎯 O que este projeto faz

- **Testa o catálogo de cafés** - Valida se os produtos estão sendo exibidos corretamente
- **Aplica cupons de desconto** - Verifica se os descontos estão funcionando
- **Simula compras completas** - Testa todo o processo de checkout
- **Valida endereços e pagamentos** - Garante que o fluxo de entrega está correto
- **Gera evidências visuais** - Captura screenshots automaticamente

## 🛠️ Tecnologias que usei

![Ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white)
![Cucumber](https://img.shields.io/badge/Cucumber-23D96C?style=for-the-badge&logo=cucumber&logoColor=white)
![Selenium](https://img.shields.io/badge/Selenium-43B02A?style=for-the-badge&logo=selenium&logoColor=white)
![Capybara](https://img.shields.io/badge/Capybara-000000?style=for-the-badge&logo=capybara&logoColor=white)
![Firefox](https://img.shields.io/badge/Firefox-FF7139?style=for-the-badge&logo=firefox&logoColor=white)

**Stack principal:**
- **Ruby** - Para escrever os testes
- **Cucumber** - Para criar cenários em linguagem natural
- **Selenium WebDriver** - Para controlar o navegador
- **Capybara** - Para simular interações do usuário
- **Firefox** - Navegador configurado para rodar em tela cheia

## 🚀 Como usar

### Pré-requisitos
- Ruby 2.7 ou superior
- Firefox instalado
- Git

### Passo a passo
```bash
# Clone o projeto
git clone https://github.com/seu-usuario/starbugs-cucumber.git
cd starbugs-cucumber

# Instale as dependências
bundle install

# Execute todos os testes
bundle exec cucumber

# Ou execute testes específicos
bundle exec cucumber features/cupom.feature
bundle exec cucumber features/catalogo.feature
bundle exec cucumber features/pedido.feature

# Execute apenas testes de fumaça
bundle exec cucumber --tags @smoke
```

## 🏗️ Como está organizado

```
starbugs-cucumber/
├── features/
│   ├── catalogo.feature      # Testes do catálogo
│   ├── cupom.feature         # Testes de cupons
│   ├── pedido.feature        # Testes de compra
│   ├── step_definitions/     # Código dos testes
│   └── support/
│       ├── pages/            # Classes das páginas
│       ├── env.rb            # Configurações
│       └── hooks.rb          # Hooks de execução
├── logs/
│   ├── screenshots/          # Screenshots dos testes
│   └── report.html           # Relatórios
└── Gemfile                   # Dependências
```

## 💡 Boas práticas que implementei

### Arquitetura
- **Page Objects** - Cada página tem sua própria classe
- **BDD** - Cenários escritos em linguagem natural
- **Data Driven Testing** - Testes com dados parametrizados
- **Hooks** - Setup e limpeza automática

### Relatórios
- **Screenshots automáticos** - Evidências visuais de cada teste
- **Relatórios HTML** - Relatórios detalhados e bonitos
- **Logs estruturados** - Fácil de debugar quando algo dá errado

### Configurações
- **Firefox em tela cheia** - Melhor visualização durante os testes
- **Timeouts inteligentes** - Espera elementos carregarem
- **Profiles personalizados** - Configurações otimizadas

## 📝 Exemplo de como escrevi os testes

```gherkin
Cenário: Aplicar cupom de desconto
    Quando aplico o seguinte cupom: "MEUCAFE"
    Então o valor final da compra deve ser atualizado para "R$ 25,99"
```

## 👨‍💻 Meu trabalho neste projeto

Como desenvolvedor de automação de testes, fui responsável por:

- **Criar toda a estrutura** de automação do zero
- **Implementar Page Objects** para cada página da aplicação
- **Escrever cenários BDD** em linguagem natural
- **Configurar o ambiente** para rodar em tela cheia
- **Implementar relatórios** com screenshots automáticos
- **Preparar para CI/CD** com geração de relatórios HTML

### Habilidades que demonstrei
- Automação web com Selenium + Capybara
- BDD/TDD com Cucumber
- Arquitetura Page Objects
- Ruby para automação
- Git e controle de versão
- Metodologias ágeis

## 📊 Resultados

- ✅ **3 features** principais automatizadas
- ✅ **100%** dos fluxos críticos cobertos
- ✅ **Configuração otimizada** para tela cheia
- ✅ **Relatórios automáticos** com evidências
- ✅ **Código escalável** para novos testes

## 📄 Licença

Este projeto está sob a licença MIT. Sinta-se livre para usar e modificar!

---

<div align="center">
  <p>Desenvolvido com ☕ e muito carinho para demonstrar automação de qualidade</p>
  <p>⭐ Se gostou do projeto, deixe uma estrela!</p>
</div>
