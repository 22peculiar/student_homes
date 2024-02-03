
const mysql = require('mysql');


// Creatin' a MySQL connection
const connection = mysql.createConnection({
    host: 'localhost', 
    user: 'root',      
    password: '', 
    database: 'shms'  
});

connection.connect((err) => {
    if (err) {
        console.error('Error connecting to MySQL: ', err);
    } else {
        console.log('Connected to MySql database');
       
    }
});

module.exports = db;



