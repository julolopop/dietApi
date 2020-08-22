'use strict';

/* ==============================================================
/*	Modulo de autenticación de usuario a través JSON Web Token	
/*=============================================================*/
const User = require('../models/User');
const service = require('../services');


// Función para inicio de sesión
function signIn(req, res) {
	const { code, name } = req.body;
	var user = new User(null, code, name);
	user.isValit().then(user => {
		if( user === false ) {
			res.status(404).send({
				message: 'Error',
			});
		} else {
			res.status(200).send({
				message: 'Access Granted ^_^',
				token: service.createToken(user[0]),
			});
		}
	})
};


module.exports = {
	signIn
}