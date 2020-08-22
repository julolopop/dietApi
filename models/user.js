'use strict'
const mysqlConnection = require('../dao');


class User {
  id;
  code;
  name;

  constructor(
    id,
    code,
    name
  ) {
    this.id = id;
    this.code = code;
    this.name = name;
  }


  isValit() {
    var that = this;
    return new Promise(function (resolve, reject) {
      mysqlConnection.query("SELECT * from users WHERE code = ? AND name = ?", [that.code, that.name], function (error, results, fields) {
        if (error) {
          resolve(false);
        } else {
          resolve(results);
        }
      });
    });
  }
}


module.exports = User