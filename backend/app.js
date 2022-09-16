const express = require('express');
const app = express();
port = 80;

if (process.env.SERVER_PORT) {
  port = process.env.SERVER_PORT;
}

app.get('/', (req, res) => {
  res.send('Hello World!');
  console.log('Received a GET on /');
});

app.listen(port, () => console.log(`Example app listening at http://localhost:${port}`));