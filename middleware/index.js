const { Router } = require('express');
var express = require('express');
var auth = require('./auth');
var router = express.Router();
var verify = require('./verify')

//registration route
router.post('/api/v1/register', auth.registration);
router.post('/api/v1/login', auth.login);

//verify page
router.get('/api/v1/test', verify(), auth.testVerify);

module.exports = router;