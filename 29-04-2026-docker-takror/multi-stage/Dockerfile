FROM node:18 AS build 
#BUILDING  
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
# BUILD qilish tugadi
# DEPLOYING
FROM node:18-alpine
WORKDIR /app
COPY --from=build /app /app
CMD ["npm", "start"]
