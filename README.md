<div align="center">

<img src="https://raw.githubusercontent.com/stackblitz-labs/bolt.diy/main/public/logo-light-styled.png" alt="bolt.diy" width="180" />

# ⚡ bolt.diy

**Открытый AI-агент для полноценной разработки прямо в браузере**

[![MIT License](https://img.shields.io/badge/Лицензия-MIT-22c55e?style=flat-square)](./LICENSE)
[![TypeScript](https://img.shields.io/badge/TypeScript-96.9%25-3178c6?style=flat-square&logo=typescript&logoColor=white)](https://www.typescriptlang.org/)
[![Remix](https://img.shields.io/badge/Remix-Framework-e8491d?style=flat-square&logo=remix&logoColor=white)](https://remix.run/)
[![Cloudflare](https://img.shields.io/badge/Cloudflare-Pages-f38020?style=flat-square&logo=cloudflare&logoColor=white)](https://pages.cloudflare.com/)
[![Electron](https://img.shields.io/badge/Electron-Desktop-47848f?style=flat-square&logo=electron&logoColor=white)](https://www.electronjs.org/)

[🚀 Быстрый старт](#-быстрый-старт) · [🤖 Поддерживаемые AI](#-поддерживаемые-ai-провайдеры) · [⚙️ Настройка](#️-настройка-переменных-окружения) · [🐳 Docker](#-запуск-через-docker) · [🖥️ Desktop](#️-desktop-приложение-electron)

</div>

---

## 🧠 Что такое bolt.diy?

**bolt.diy** — это open-source версия проекта [bolt.new](https://bolt.new) от StackBlitz. Это полноценный AI-агент для разработки, который может работать **локально** или в **облаке**, используя **любого AI-провайдера** на ваш выбор.

> 💡 Вы контролируете всё: модели, ключи, данные. Полная независимость от поставщика.

### Ключевые преимущества

| Особенность | Описание |
|---|---|
| 🔓 **Любой AI** | Подключайте любые LLM — Anthropic, OpenAI, Gemini, Ollama, DeepSeek и многие другие |
| 🌐 **В браузере** | WebContainer API в StackBlitz — полноценная Node.js среда прямо в браузере |
| 🖥️ **Desktop-версия** | Приложение на Electron для Windows, macOS и Linux |
| 🐳 **Docker** | Поддержка запуска в изолированных контейнерах |
| 🔗 **GitHub / GitLab** | Создание репозиториев, push и работа с PR через интерфейс |
| 🚀 **Деплой** | Vercel и Netlify — деплой проектов одной кнопкой |
| 🛠️ **MCP-серверы** | Model Context Protocol для расширения контекста и функций |

---

## 🤖 Поддерживаемые AI-провайдеры

bolt.diy поддерживает более **20 провайдеров**:

<table>
<tr>
<td>

**Популярные**
- 🟣 [Anthropic Claude](https://console.anthropic.com/)
- 🟢 [OpenAI GPT](https://platform.openai.com/api-keys)
- 🔵 [Google Gemini](https://makersuite.google.com/app/apikey)
- 🟡 [DeepSeek](https://platform.deepseek.com/api_keys)
- 🔴 [Groq](https://console.groq.com/keys)
- ⚪ [Mistral](https://console.mistral.ai/api-keys/)
- 🔘 [Cohere](https://dashboard.cohere.ai/api-keys)

</td>
<td>

**Специализированные**
- ◎ [Cerebras](https://cloud.cerebras.ai/settings) — сверхбыстрый инференс
- 🔥 [Fireworks AI](https://fireworks.ai/api-keys)
- 🌟 [X.AI (Grok)](https://console.x.ai/)
- 🌙 [Moonshot (Kimi)](https://platform.moonshot.ai/)
- 🐙 [GitHub Models](https://github.com/settings/tokens)
- 🔄 [OpenRouter](https://openrouter.ai/keys) — доступ ко всем моделям сразу

**Локальные**
- 🦙 [Ollama](http://127.0.0.1:11434) — любые локальные модели
- 🏰 [LMStudio](http://127.0.0.1:1234) — GUI для LLM
- ☁️ [AWS Bedrock](https://console.aws.amazon.com/iam/)

</td>
</tr>
</table>

---

## 🚀 Быстрый старт

### Требования

- **Node.js** ≥ 18.18.0
- **pnpm** ≥ 9.14.4

```bash
# Установка pnpm
npm install -g pnpm
# Установка и запуск
# 1. Клонирование репозитория
git clone [https://github.com/ivanm696/bolt.diy-main.git](https://github.com/ivanm696/bolt.diy-main.git)
cd bolt.diy-main

# 2. Установка зависимостей
pnpm install

# 3. Настройка переменных окружения
cp .env.example .env.local
# Отредактируйте .env.local и добавьте свои ключи

# 4. Запуск в режиме разработки
pnpm run dev
Доступ по адресу: http://localhost:5173
​⚙️ Настройка переменных окружения
​Пример файла .env.local:
# Пример для Anthropic
ANTHROPIC_API_KEY=sk-ant-xxxxxxxx

# Пример для OpenAI
OPENAI_API_KEY=sk-xxxxxxxx

# Пример для локальной Ollama
OLLAMA_API_BASE_URL=[http://127.0.0.1:11434](http://127.0.0.1:11434)
🐳 Запуск через Docker
# Сборка и запуск контейнера
pnpm run dockerbuild
pnpm run dockerrun

# Или через Docker Compose
docker-compose up -d
🖥️ Desktop-приложение (Electron)
# Режим разработки
pnpm run electron:dev

# Сборка под вашу ОС
pnpm run electron:build:win # Windows
pnpm run electron:build:mac # macOS
pnpm run electron:build:linux # Linux
🧩 Технологический стек
Слой Технология
Framework Remix + Vite
UI React 18 + Radix UI + UnoCSS
AI SDK Vercel AI SDK
Runtime WebContainer API
Language TypeScript 5
📄 Лицензия
​Этот проект распространяется под лицензией MIT.
​<div align="center">
# content://com.estrongs.files/storage/emulated/0/Download/bolt_diy_demo.html
