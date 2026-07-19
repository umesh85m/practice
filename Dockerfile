FROM node:18-alpine

WORKDIR /app

# Simple inline server — PRT demo ke liye kaafi hai
RUN echo "const http = require('http'); \
http.createServer((req, res) => { \
  res.writeHead(200, {'Content-Type': 'text/plain'}); \
  res.end('Backend API is running - Blogging Platform'); \
}).listen(3000, () => console.log('Server running on port 3000'));" > server.js

EXPOSE 3000

CMD ["node", "server.js"]

