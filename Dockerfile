FROM node:24

WORKDIR /app

ENV NODE_ENV=production
ENV PORT=3000

COPY . .
RUN npm install
RUN npm run build



# Csak a futtatáshoz szükséges fájlokat másoljuk

EXPOSE 3000

CMD ["npm", "run", "start"]