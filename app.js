'use strict';

const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');

// Motor de plantillas para renderizado de vistas
const hbs = require('express-handlebars');

const app = express();

// Se importan los end points generados por el router
const api = require('./routes');


app.use(bodyParser.urlencoded({ extended: false}));
app.use(bodyParser.json());

// Configuración  de las plantillas
app.engine('.hbs', hbs({
	defaultLayout: 'default',
	extname: '.hbs'
}));
app.set('view engine', '.hbs');


// Indicamos a la app que utilice las rutas de los end points generados por api
app.use('/api', api);

// Carpeta de acceso a recursos estaticos
app.use(express.static(path.join(__dirname, 'public')));

// Renderizados de vistas
app.get('/login', (req, res) => {
	res.render('login')
});
app.get('/products', (req, res) => {
	res.render('product')
});

const mysqlConnection = require('./dao');

/* GET users listing. */
app.get('/user/:tipo', (req, res, next)  => {
  const { tipo } = req.params;
  mysqlConnection.query("SELECT * from alimentos WHERE tipo = ?", [tipo], function (error, results, fields) {
    if (error) {
      res.json({ "status": 500, "error": error, "response": null });
      //Hay un error a la hora de conectarse a la BBDD
    } else {
      res.json({ "status": 200, "error": null, "response": results });
      //Se envian todos los usuarios
    }
  });
  // res.send('respond with a resource');
});

app.post('/user/comida', (req, res, next)  => {
  const { fecha } = req.body;
  mysqlConnection.query("SELECT * from comida  WHERE id IN (SELECT usercomida.idSubUser from usercomida WHERE fecha = ?)", [fecha], function (error, results, fields) {
    if (error) {
      res.json({ "status": 500, "error": error, "response": null });
      //Hay un error a la hora de conectarse a la BBDD
    } else {
      res.json({ "status": 200, "error": null, "response": results });
      //Se envian todos los usuarios
    }
  });
  // res.send('respond with a resource');
});

app.get('/user/:tipo', (req, res, next)  => {
  const { tipo } = req.params;
  mysqlConnection.query("SELECT * from alimentos WHERE tipo = ?", [tipo], function (error, results, fields) {
    if (error) {
      res.json({ "status": 500, "error": error, "response": null });
      //Hay un error a la hora de conectarse a la BBDD
    } else {
      res.json({ "status": 200, "error": null, "response": results });
      //Se envian todos los usuarios
    }
  });
  // res.send('respond with a resource');
});

module.exports = app;