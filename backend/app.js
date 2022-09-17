const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Hello World v2.0!');
  console.log('Received a GET on /');
});

// app.listen(port, () => console.log(`Example app listening at http://localhost:${port}`));

app.listen(process.env.PORT || 3000, function () {
  console.log("Express server listening on port %d in %s mode", this.address().port, app.settings.env);
});