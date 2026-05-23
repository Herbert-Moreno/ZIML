const std = @import("std");
//Tudo tem que virar uma interface graças ao sistema de tipagem bosta hyper restrita do zig
//Needs to be Number type e.g. : i32 or f32
pub const BinaryStep = struct {
  pub fn run(comptime T: type, yhat: T) T {
    if (yhat >= 0) {return @as(T, 1);}
    return @as(T, 0);
  }
};

pub const LinearFunction = struct {
  pub fn run(comptime T: type, yhat: T, a: T) T {
    return a * yhat;
  }
};

pub const Sigmoid = struct {
  pub fn run(comptime T: type, yhat: T) T {
    return @as(T, 1) / (@as(T, 1) + std.math.pow(T, @as(T, std.math.e), -yhat));
  }
};

pub const Tanh = struct {
  pub fn run(comptime T: type, yhat: T) T {
    return @as(T, 2) / ((@as(T, 1) + std.math.pow(T, @as(T, std.math.e), -(2*yhat))) * @as(T, -1));
  }
};

pub const ReLU = struct {
  pub fn run(comptime T: type, yhat: T) T {
    return @max(0, yhat);
  }
};