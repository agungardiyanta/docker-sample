FROM node:latest
COPY app/ .
WORKDIR /app    
ENV NODE_ENV=production
RUN npm install --production
EXPOSE 80
CMD [ "node", "server.js" ]