var connection = require('../connection');
var mysql = require('mysql');
var md5 = require('MD5');
var response = require('../res');
var jwt = require('jsonwebtoken');
var config = require('../config/secret');
var ip = require('ip');

//module register
exports.registration = function (req, res){
    var post = {
        username: req.body.username,
        email: req.body.email,
        password: md5(req.body.password),
        role: req.body.role,
        tanggal_daftar: new Date()
    };

    var queryMailValidation = "SELECT email FROM ?? WHERE ?? = ?";
    var tableMailValidation = ["user", "email", post.email];

    queryMailValidation = mysql.format(queryMailValidation, tableMailValidation);

    connection.query(queryMailValidation, function(error, rows){
        if(error){
            console.log(error);
        } else{
            if(rows.length == 0){
                var queryCreate = "INSERT INTO ?? SET ?";
                var tableCreate = ["user"];
                queryCreate = mysql.format(queryCreate, tableCreate);
                connection.query(queryCreate, post, function(error, rows){
                    if(error){
                        console.log(error);
                    } else{
                        response.ok("User created successfully", res);
                    }
                });
            } else{
                response.ok('Email already registered!', res);
            }
        }
    })
}