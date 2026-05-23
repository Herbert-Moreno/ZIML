pub const ModelMeta = struct {
    version: []const u8,
    name: []const u8,
    epochs: usize,
};

pub const Layer = struct {
    bias: f32,
    learning_rate: f32,
};