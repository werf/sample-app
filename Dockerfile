FROM node:20-bullseye@sha256:241e75e0ce31de17de20fb9577a156178ef37947925439a3d9b00e8f4835e8d3
ARG CACHE_VERSION
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci --no-progress
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
