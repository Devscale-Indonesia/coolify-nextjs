FROM node:lts

WORKDIR /app

COPY package*.json .
COPY prisma prisma

RUN npm install
RUN npx prisma generate

COPY . .

ENV DATABASE_URL postgres://postgres:FLgAOQEv58lwZaEIQiytyzC461VixHFxa63hOiJ68FrTxdq77APdiDL1fqf2I0Gc@103.117.57.86:5432/postgres

RUN npm run build

EXPOSE 3000

CMD [ "npm", "run", "start" ]