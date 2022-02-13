# build stage
FROM node:lts as build-stage

RUN mkdir -p /usr/app
WORKDIR /usr/app

ARG ENV=production
ENV ENV=$ENV

COPY package*.json ./
RUN npm install
COPY . .
RUN npm run generate

# server stage
FROM nginx:latest as server-stage
COPY --from=build-stage /usr/app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]