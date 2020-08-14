// Objeto con configuración para la base de datos
// en producción port y db serán establecidas por las variables
// de entorno PORT y MONGODB
module.exports = {
	port: process.env.PORT || 3000,
	db: process.env.MONGODB || 'http//localhost:3306/dietapi',
	SECRET_TOKEN: 'claveMasComplejaParaCifradoDelToken'
}