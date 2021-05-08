FROM node:16-alpine AS modules
WORKDIR /app
COPY package.json .
RUN npm install

FROM alpine:3.13.5
RUN apk update && \
 apk add nodejs && \
 apk add npm && \
 rm -rf /var/cache/apk/*
WORKDIR /app
COPY --from=modules /app .
COPY . .
EXPOSE 8080
CMD npm run initdb && npm run dev