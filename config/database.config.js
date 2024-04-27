const mysql = require("mysql2");
// const dotenv = require('dotenv');

// const db = mysql.createConnection({
//   host: "localhost",
//   user: "save71comzIvH",
//   password: "DeZfHvzPXnkdlwOR7p9QB1U5",
//   database: "save71_com_kCjFzw3q",
// });

const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "12345678",
  database: "save-71_2",
});

db.connect(function (error) {
  if (error) {
    console.log(error);
  } else {
    console.log("Database Connected!");
  }
});

module.exports = db;
