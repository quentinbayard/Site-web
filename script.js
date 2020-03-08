var express = require('express');
var mysql = require('mysql');

var app = express();

var connection = mysql.createPool({
	connectionLimit: 50,
	host: 'localhost',
	user: 'root',
	password: '',
	database: 'test'
});

/*connection.connect(function(error) {
	if(!!error) {
		console.log('Error');
	}
	else {
		console.log('ok');
	}
});
*/
app.get('/', function(req, resp) {
	connection.getConnection(function(error, tempCont) {
		if(!!error) {
			tempCont.release();
			consol.log('error');
		}
		else {
			tempCont.query("SELECT * FROM race", function(error, rows, fields) {
				tempCont.release();
				if(!!error) {
					consol.log('error');
				}
				else {
					resp.json(rows);
				}
			});
		}
	});
});
app.listen(1337)