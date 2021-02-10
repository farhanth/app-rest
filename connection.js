var mysql = require('mysql');

//create mysql connection
const conn = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: '',
});

conn.connect((err) => {
    if (err) throw err;
    console.log('MySQL Connected');
});

module.exports = conn;