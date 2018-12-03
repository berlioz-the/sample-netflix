const express = require('express')
const Promise = require('promise');
const berlioz = require('berlioz-connector');

const app = express();
berlioz.setupExpress(app);

app.use(express.static('public'))
app.set('view engine', 'ejs');

app.get('/', function (req, response) {
    response.send({
        message: 'Hello from Account :: App',
        appId: process.env.BERLIOZ_TASK_ID
    });
});

app.get('/test', function (req, response) {
    var options = { url: '/test', json: true };
    return berlioz.cluster('account', 'api').request(options)
        .then(result => {
            response.send("<h1>NETFLIX-WEB</h1><pre>" + JSON.stringify(result, null, 4) + "</pre>");
        })
        .catch(error => {
            response.send({
                error: error.message
            });
        });
});

app.listen(process.env.BERLIOZ_LISTEN_PORT_DEFAULT, process.env.BERLIOZ_LISTEN_ADDRESS, (err) => {
    if (err) {
        return console.log('something bad happened', err)
    }
    console.log(`server is listening on ${process.env.BERLIOZ_LISTEN_ADDRESS}:${process.env.BERLIOZ_LISTEN_PORT_DEFAULT}`)
})
