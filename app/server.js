const express = require('express'),
    bodyParser = require('body-parser'),
    morgan = require('morgan'),
    app = express();


app.use(morgan('dev'));
app.use(express.static(__dirname + '/frontend'));
app.use(bodyParser.urlencoded({
    extended: false
}));
app.use(bodyParser.json());

var todos = [];
var projects = [];

app.post('/todos', function (req, res) {
    todos.push(req.body.todo);
    res.status(201).json({
        'todo': req.body.todo
    });
});

app.get('/todos', function (req, res) {
    res.status(200).json({
        'todos': todos
    });
});

app.post('/projects', function (req, res) {
    todos.push(req.body.project);
    res.status(201).json({
        'project': req.body.project
    });
});

app.get('/projects', function (req, res) {
    res.status(200).json({
        'projects': projects
    });
});

app.listen(8000, function () {
    console.log("IssuTräggr3000 ready.");
});