const ZIML = @This();

const Patterns = @import("utils/Patterns.zig");
pub const ModelMeta = Patterns.ModelMeta;

// StepFunctions
const Activation = @import("utils/ActivationFunctions.zig");
pub const BinaryStep = Activation.BinaryStep;
pub const LinearFunction = Activation.LinearFunction;
pub const Sigmoid = Activation.Sigmoid;
pub const Tanh = Activation.Tanh;
pub const ReLU = Activation.ReLU;

pub const Perceptron = @import("linear_classifiers/Perceptron.zig").Perceptron;