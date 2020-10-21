const winston = require("winston");
const mongoose = require("mongoose");
const config = require("config");

module.exports = async function () {
	await mongoose.connect(config.get("db"), {
		useNewUrlParser: true,
		useUnifiedTopology: true,
	});

	var db = mongoose.connection;
	db.on("error", (e) => {
		winston.info(`Not connected to ${db}:------------- ${e}`);
		process.exit(1);
	});
	db.once("open", function () {
		() => {
			winston.info(`Connected to ${db}...`);
			callback();
		};
	});
};
