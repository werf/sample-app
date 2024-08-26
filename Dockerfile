FROM node:18-bullseye@sha256:7d42dd018e2ce81536d0fad1d69fe14ec9ccd815fc22273e0e5baf175950c79e
ARG CACHE_VERSION
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci --no-progress
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
