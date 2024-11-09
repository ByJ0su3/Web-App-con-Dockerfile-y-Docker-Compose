const express = require('express');
const app = express();
const port = 8080;

app.get('/', (req, res) => {
  res.send('Hola Mundo desde Docker!');
});

app.listen(port, () => {
  console.log(`Aplicación escuchando en http://localhost:${port}`);
});

