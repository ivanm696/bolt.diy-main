# ---- build stage ----
FROM node:22-bookworm-slim AS build
LABEL org.opencontainers.image.description="AI-powered full-stack web development in the browser (Remix + Cloudflare + WebContainer)"
WORKDIR /app

# CI-friendly env
ENV HUSKY=0
ENV CI=true

# Use pnpm
RUN corepack enable && corepack prepare pnpm@9.15.9 --activate

# Установка необходимых системных утилит и сертификатов
RUN apt-get update && apt-get install -y --no-install-recommends git openssh-client ca-certificates \
  && rm -rf /var/lib/apt/lists/*

# Accept (optional) build-time public URL for Remix/Vite (Coolify can pass it)
ARG VITE_PUBLIC_APP_URL
ENV VITE_PUBLIC_APP_URL=${VITE_PUBLIC_APP_URL}

# Копируем СРАЗУ ВСЕ файлы проекта, чтобы pnpm видел полную структуру (включая патчи и воркспейсы)
COPY . .

# Force Git to use HTTPS instead of SSH
RUN git config --global url."https://github.com/".insteadOf "git@github.com:"

# Стандартная, надежная установка зависимостей в соответствии с вашим lock-файлом
RUN pnpm install --frozen-lockfile

# Build the Remix app (SSR + client)
RUN NODE_OPTIONS=--max-old-space-size=4096 pnpm run build
