const winston = require("winston");
const mongoose = require("mongoose");
const config = require("config");

module.exports = function () {
	const db = config.get("db");
	const options = {
		autoIndex: false, // Don't build indexes
		reconnectTries: 30, // Retry up to 30 times
		reconnectInterval: 500, // Reconnect every 500ms
		poolSize: 10, // Maintain up to 10 socket connections
		// If not connected, return errors immediately rather than waiting for reconnect
		bufferMaxEntries: 0,
		useNewUrlParser: true,
		useUnifiedTopology: true,
	};

	mongoose
		.connect(db, options)
		.then(() => winston.info(`Connected to ${db}...`))
		.catch((e) =>
			winston.info(`Not connected to ${db}:------------- ${e}`),
		);
};
