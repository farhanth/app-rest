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
    });
}

//module login
exports.login = function(req, res){
    var post = {
        email: req.body.email,
        password: req.body.password
    };

    var queryLogin = "SELECT * FROM ?? WHERE ?? = ? AND ?? = ?";
    var tableLogin = ["user", "email", post.email, "password", md5(post.password)];

    queryLogin = mysql.format(queryLogin, tableLogin);

    connection.query(queryLogin, function(error, rows){
        if(error){
            console.log(error);
        }else{
            if(rows.length == 1){
                var token = jwt.sign({rows}, config.secret, {
                    expiresIn: 4320
                });
                id_user = rows[0].id_user;

                var dataAccessToken = {
                    id_user: id_user,
                    access_token: token,
                    ip_address: ip.address()
                };

                var queryToken = "INSERT INTO ?? SET ?";
                var tableToken = ["akses_token"];

                queryToken = mysql.format(queryToken, tableToken);

                connection.query(queryToken, dataAccessToken, function(error,rows){
                    if(error){
                        console.log(error);
                    } else{
                        res.json({
                            success: true,
                            message: "JWT Token Generated Successfully",
                            token: token,
                            currUser: dataAccessToken.id_user
                        });
                    }
                });
            } else{
                res.json({
                    error: true,
                    message: "Username and Password not found. Login Failed!"
                });
            }
        }
    });
}

//test verify
exports.testVerify = function(req,res){
    response.ok("Test verify successfully (ROLE 2)", res)
};