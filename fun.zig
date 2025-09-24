const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    const stdin = std.io.getStdIn().reader();
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();
    defer _ = gpa.deinit();

    try stdout.print("Enter the first number: ", .{});
    const num1_str = try stdin.readUntilDelimiterOrEofAlloc(allocator, '\n', 100);
    defer allocator.free(num1_str);
    const num1 = try std.fmt.parseFloat(f64, std.mem.trim(u8, num1_str, " \r\n"));

    try stdout.print("Enter an operator (+, -, *, /): ", .{});
    const op_str = try stdin.readUntilDelimiterOrEofAlloc(allocator, '\n', 10);
    defer allocator.free(op_str);
    const op = std.mem.trim(u8, op_str, " \r\n")[0];
    
    try stdout.print("Enter the second number: ", .{});
    const num2_str = try stdin.readUntilDelimiterOrEofAlloc(allocator, '\n', 100);
    defer allocator.free(num2_str);
    const num2 = try std.fmt.parseFloat(f64, std.mem.trim(u8, num2_str, " \r\n"));

    const result = switch (op) {
        '+' => num1 + num2,
        '-' => num1 - num2,
        '*' => num1 * num2,
        '/' => {
            if (num2 == 0) {
                try stdout.print("Error: Cannot divide by zero.\n", .{});
                return;
            }
            break num1 / num2;
        },
        else => {
            try stdout.print("Error: Invalid operator.\n", .{});
            return;
        }
    };
    
    try stdout.print("Result: {d}\n", .{result});
}
