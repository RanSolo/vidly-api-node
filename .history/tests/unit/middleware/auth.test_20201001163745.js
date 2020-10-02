const { User } = require("../../../models/user");
const auth = require("../../../middleware/auth");
const mongoose = require("mongoose");

const getToken = () => {
	const token = jest.fn().mockReturnValue(token);
	return token;
};
describe("auth middleware", async () => {
	it("should populate req.user with the payload of a valid JWT", () => {
		const user = {
			_id: mongoose.Types.ObjectId().toHexString(),
			isAdmin: true,
		};
		const token = new User(user).generateAuthToken();
		const mock = getToken();
		const req = {
			header: mock,
		};
		const res = {};
		const next = jest.fn();

		auth(req, res, next);

		expect(req.user).toMatchObject(user);
	});
});
