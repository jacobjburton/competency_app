require('dotenv').config();

const express = require('express'),
    bodyParser = require('body-parser'),
    massive = require('massive'),
    cors = require('cors'),
    mdlwr = require('./middleware/middleware'),
    ctrl = require('./controller');


const app = express();

const 
{ 
    SERVER_PORT,
    CONNECTION_STRING
} = process.env;

function middleware(req, res, next)
{
    console.log("HERE BE TOP LEVEL MIDDLEWARE!");
    next();
}

app.use(bodyParser.json());
app.use(cors());
app.use(middleware);

app.get(`/studentclasses/:id`, mdlwr, (req, res) => {
    const db = req.app.get('db');
    console.log(req.query)
    db.get_student_classes(req.params.id)
    .then(classes => {
        res.send(classes);
    });    
});
app.put('/editaddressByBody/:id', mdlwr, (req, res) => {
    const db = req.app.get('db');

    const { id } = req.params;
    const { address, city, state, zip } = req.body;

    db.edit_address([id, address, city, state, zip])
        .then(address => {
            res.status(200).send(address);
        }).catch((err) => {
            res.status(500).send(err);
        });
});
app.put('/editaddressByQuery/:id', mdlwr, (req, res) => {
    const db = req.app.get('db');
    console.log(req.query)
    const { id } = req.params;
    const { address, city, state, zip } = req.query;
    

    db.edit_address([id, address, city, state, zip])
        .then(address => {
            res.status(200).send(address);
        }).catch((err) => {
            res.status(500).send(err);
        });
});



massive(CONNECTION_STRING).then(db => 
{
    app.set('db', db);
    console.log('db connected!')
    app.listen(SERVER_PORT, () => 
    {
        console.log(`Listeny McListenerson on port: ${SERVER_PORT}`);
    });
})
