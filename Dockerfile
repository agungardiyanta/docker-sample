FROM node:latest
WORKDIR /app
COPY app/ .    
ENV NODE_ENV=production
RUN npm install --production
EXPOSE 8080
CMD [ "node", "server.js" ]