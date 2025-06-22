#!/usr/bin/env luajit
local rtbl = require("rtables.rtables")
local days = rtbl.read_only({"mon", "tue", "wed"})
print(days)

