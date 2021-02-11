var jwt = require('jsonwebtoken');
var key = require('../config/secret');

function verify(roles){
    return function (req, rest, next){
        var roles = req.body.roles;
        //authorization check
        var tokenWithBearer = req.headers.authorization;

        if(tokenWithBearer){
            var token = tokenWithBearer.split(' ')[1];
            
            //verify
            jwt.verify(token, key.secret, function(error, decoded){
                if(error){
                    return rest.status(401).send({
                        auth: false,
                        message: "Token not registered!"
                    });
                }else{
                    if(roles==2){
                        req.auth = decoded;
                        next();
                    } else{
                        return rest.status(401).send({
                            auth: false,
                            message: "Role not authorized!"
                        }); 
                    }
                }
            });
        } else{
            return rest.status(401).send({
                auth: false,
                message: "Token not found!"
            }); 
        }
    }
}

module.exports = verify;