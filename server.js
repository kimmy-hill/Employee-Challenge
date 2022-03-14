var express = require('express');

var app = express();

var PORT = process.env.PORT || 8080;

app.use(express.json());

app.use(express.urlencoded({ extended: true }));

app.use(express.static('./public'));

//Getting routes on server
app.use(require("./routes/index_api"));
app.use(require("./routes/index_html"));

app.listen(PORT, function () {console.log(`App listening on PORT: ${PORT}`)})
