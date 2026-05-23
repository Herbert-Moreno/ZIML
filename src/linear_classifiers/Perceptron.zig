pub const Perceptron = struct {
    meta: ModelMeta,
    bias: f32,

    const Self = @This();

    pub fn init(epochs: usize, bias: f32) Self {
        return .{
            .meta = .{
                .version = "0.0.2",
                .name = "Perceptron",
                .epochs = epochs,
            },
            .bias = bias,
        };
    }

    pub fn train(self: *Self, comptime InputTypes: type, x: []InputTypes, w: []InputTypes, activationFn: type) u8 {
        var yhat: InputTypes = std.mem.zeroes(InputTypes);
        const b = @as(InputTypes, @floatCast(self.bias));
        if (x.len != w.len) {
            std.debug.print("Incompatible size", .{});
            return 0;
        }
        for (0..self.meta.epochs) |e| {
            for (x, w) |xi, wi| {
                yhat += (xi * wi) + b;
            }
            std.debug.print("Epoch: {}, yhat: {}\n", .{e, yhat});
        }
        return @as(u8, @intFromFloat(activationFn.run(InputTypes, yhat)));
    }

    //pub fn predict(self: *Self) void {

    //}
};

const std = @import("std");
const ZIML = @import("../root.zig");
const ModelMeta = ZIML.ModelMeta;