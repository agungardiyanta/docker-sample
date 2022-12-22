FROM node:latest
COPY app/ .
WORKDIR /app    
ENV NODE_ENV=production
RUN npm install --production
CMD [ "node", "server.js" ]