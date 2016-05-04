var express = require('express'),
    exphbs  = require('express-handlebars'),
    mysql = require('mysql'),
    myConnection = require('express-myconnection'),
    bodyParser = require('body-parser'),
    sleep = require("./routes/sleep"),
    app = express();

var dbOptions = {
      host: 'localhost',
      user: 'sleep',
      password: '12345',
      port: 3306,
      database: 'sleep_app'
};

app.engine('handlebars', exphbs({defaultLayout: 'main'}));
app.set('view engine', 'handlebars');
app.use(express.static('public'));
app.use(myConnection(mysql, dbOptions, 'single'));
app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json())



app.get('/', function (req, res) {
    res.render('Quotes');
});
app.get('/sleep', sleep.show);


var port = process.env.PORT || 8080;
var server = app.listen(port, function () {
  var host = server.address().address;
  var port = server.address().port;
  console.log('App running on http://%s:%s', host, port);
});