const { Router } = require('express');
var express = require('express');
var auth = require('./auth');
var router = express.Router();

//registration route
router.post('/api/v1/register', auth.registration);
router.post('/api/v1/login', auth.login);

module.exports = router;