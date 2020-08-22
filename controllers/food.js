'use strict';

/* ==============================================================
/*	Modulo de autenticación de usuario a través JSON Web Token	
/*=============================================================*/
const Food = require('../models/Food');
const service = require('../services');


/*
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
*/



function getDate(req, res, next) {
	const { date } = req.body;
	var food = new Food(null, date,null,null);
	food.getDate().then(food => {
		if( food === false ) {
			res.status(404).send({
				message: 'Error',
			});
		} else {
			res.status(200).send({
				code: 200,
				data: food,
			});
		}
	})
}

function setDate(req, res, next) {
	const { date, portion, idFood } = req.body;
	const { authorization } = req.headers;
	res.send(authorization);
	// var food = new Food(user, date, portion, idFood);
	// food.getDate().then(food => {
	// 	if( food === false ) {
	// 		res.status(404).send({
	// 			message: 'Error',
	// 		});
	// 	} else {
	// 		res.status(200).send({
	// 			code: 200,
	// 			data: food,
	// 		});
	// 	}
	// })
}
  

module.exports = {
	getDate,
	setDate
}