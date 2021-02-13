const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const cors = require('cors');

//call morgan
var morgan = require('morgan');

//parse application/json
app.use(bodyParser.urlencoded({
    extended: true
}));
app.use(bodyParser.json());

//use morgan
app.use(morgan('dev'));

app.use(cors());

//call routes
var routes = require('./routes')
routes(app);

//call routes from middleware index
app.use('/auth', require('./middleware'));

app.listen(3001, () => {
    console.log(`Server started on port 3001`);
});