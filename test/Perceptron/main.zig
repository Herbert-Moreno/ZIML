const std = @import("std");
const ZIML = @import("ZIML");

pub fn main() void {
	var data = [_]f16 {4.6, 3.2, 1.4, 0.2, 5.5};
	var label = [_]f16 {1, 0, 1, 0, 0};

	var model = ZIML.Perceptron.init(30, 0.3);
	const result = model.train(f16, &data, &label, ZIML.BinaryStep);

	std.debug.print("{}", .{result});
}