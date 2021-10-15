'use strict';

var config = require('./config.webgme'),
    validateConfig = require('webgme/config/validator');

// Add/overwrite any additional settings here
const mongoHost = process.env.MONGO_HOST || '127.0.0.1';
config.mongo.uri = `mongodb://${mongoHost}:27017/webgme_dcrypps`;
config.plugin.allowServerExecution = true;


validateConfig(config);
module.exports = config;
