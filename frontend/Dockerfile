# Step 1: Build the React app
FROM node:18 AS build
WORKDIR /app
COPY package.json package-lock.json ./
RUN rm -rf node_modules/.vite
RUN rm -rf node_modules
RUN npm install
COPY . .

# Set up environment variables
RUN echo "VITE_FESTIVAL_API_KEY = i6joetD7vwqBJ+jkjYB7eY7xMq3/Co/Gu7a3B0EPjHum8n8VJBSfZH0k5Sv46qdSMio73m0KV/iEv324Cj+MIw==" > .env
RUN echo "VITE_KAKAO_MAP_API_KEY = 5f7f5300f192e721409967009bb97d2a" >> .env
RUN echo "VITE_KAKAO_MAP_PLAN_API_KEY = ba96305769bdf4292cbd1de2c2f47dc6" >> .env
RUN echo "VITE_KAKAO_SPOT_API_KEY = 17fb5c7558761e0b3c1547ac1466ddb3" >> .env
RUN npm run build

# Step 2: Set up Nginx to serve the build files
FROM nginx:alpine
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]