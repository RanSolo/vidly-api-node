const { User } = require("../../../models/user");
const auth = require("../../../middleware/auth");
const mongoose = require("mongoose");

describe("auth middleware", () => {
	it("should populate req.user with the payload of a valid JWT", async () => {
		const user = {
			_id: mongoose.Types.ObjectId().toHexString(),
			isAdmin: true,
		};
		const token = new User(user).generateAuthToken();
		const mock = jest.fn();
		mock.mockReturnValue(token);

		const req = {
			header: mock(),
		};
		const res = {};
		const next = jest.fn();
		await auth(req, res, next);
		console.log("req.user", req);
		expect(req.user).toMatchObject(user);
	});
});
