const winston = require("winston");
const mongoose = require("mongoose");
const config = require("config");

module.exports = function () {
	const db = "mongodb://db:27017/myapp";
	mongoose
		.connect(db, { useNewUrlParser: true, useUnifiedTopology: true })
		.then(() => winston.info(`Connected to ${db}...`))
		.catch((err) => {
			winston.info("Not Connected to Database ERROR! ", err);
		});
};
