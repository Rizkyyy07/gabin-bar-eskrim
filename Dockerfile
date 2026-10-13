FROM node:22-bookworm-slim
WORKDIR /app
COPY package.json package-lock.json* ./
RUN npm install --omit=dev 2>/dev/null || npm install --production 2>/dev/null || true
COPY . .
ENV NODE_ENV=production
ENV DATA_DIR=/data
RUN mkdir -p /data
EXPOSE 3000
CMD ["node", "server.js"]
