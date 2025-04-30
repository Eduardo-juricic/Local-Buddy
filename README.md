# 🌍 Local Buddy

**Local Buddy** é uma aplicação web que conecta **viajantes** a **guias locais**, oferecendo experiências autênticas e roteiros personalizados com o auxílio de **Inteligência Artificial**.

---

## ✨ Funcionalidades

- 🔍 Explorar guias locais e roteiros de viagem personalizados
- ✈️ Criar experiências únicas com sugestões baseadas em IA
- 💬 Avaliar e comentar experiências
- 📍 Interface amigável, responsiva e intuitiva

---

## 🧰 Tecnologias Utilizadas

- **Ruby on Rails** (backend)
- **PostgreSQL** (banco de dados)
- **Bootstrap 5** + **CSS** (frontend responsivo)
- **Stimulus.js** (interatividade no frontend)
- **Heroku** (deploy)
- **OpenAI API** (sugestões inteligentes)

---

## 🚀 Acesse o App

- [🔗 Deploy no Heroku](https://local-buddy-f4065b1d6752.herokuapp.com)

---

## 🛠️ Como rodar localmente

```bash
# Clone o repositório
git clone https://github.com/Eduardo-juricic/local-buddy.git
cd local-buddy

# Instale as dependências
bundle install
yarn install

# Crie e popule o banco de dados
rails db:create db:migrate db:seed

# Rode o servidor
rails server
