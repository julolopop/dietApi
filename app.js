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

module.exports = app;