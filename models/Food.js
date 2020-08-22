'use strict'
const mysqlConnection = require('../dao');


class Food {
  user;
  date;
  portion;
  idFood;

  constructor(
    user,
    date,
    portion,
    idFood
  ) {
    this.user = user;
    this.date = date;
    this.portion = portion;
    this.idFood = idFood;
  }


  getDate() {
    var that = this;
    return new Promise(function (resolve, reject) {
      mysqlConnection.query("SELECT * from comida  WHERE id IN (SELECT usercomida.idSubUser from usercomida WHERE fecha = ?)", [that.date], function (error, results, fields) {
        if (error) {
          resolve(false);
        } else {
          resolve(results);
        }
      });
    });
  }

  setDate() {
    var that = this;
    return new Promise(function (resolve, reject) {
      mysqlConnection.query("INSERT INTO `comida` (`id`, `porciones`, `idAlimento`, `idUserComida`) VALUES (NULL, '?', '?', '?');", [that.portion,that.idFood,that.user,], function (error, results, fields) {
        if (error) {
          resolve(false);
        } else {
          resolve(results);
        }
      });
    });
  }
}


module.exports = Food