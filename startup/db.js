const winston = require("winston");
const mongoose = require("mongoose");
const config = require("config");

module.exports = function () {
	const db = config.get("db");
	mongoose
		.connect(db, { useNewUrlParser: true, useUnifiedTopology: true })
		.then(() => winston.info(`Connected to ${db}...`))
		.then(
			new Promise((resolve) => {
				setTimeout(resolve, 5000);
			}),
		) // lets wait 5 second before connection to MongoDB)
		.catch((e) =>
			winston.info(`Not connected to ${db}:------------- ${e}`),
		);
};
