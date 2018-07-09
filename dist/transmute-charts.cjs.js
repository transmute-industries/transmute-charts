'use strict';

function _interopDefault (ex) { return (ex && (typeof ex === 'object') && 'default' in ex) ? ex['default'] : ex; }

var express = _interopDefault(require('express'));
var path = _interopDefault(require('path'));
var cors = _interopDefault(require('cors'));
var bodyParser = _interopDefault(require('body-parser'));
var eaa = _interopDefault(require('express-async-await'));

var app = express();
eaa(app);
app.use(express.static(path.join(__dirname, '../public')));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
  extended: true
}));
app.use(cors());

var PORT = process.env.PORT || 5000;
app.listen(PORT, function () {
  console.log("Listening on ".concat(PORT));
});

module.exports = app;
