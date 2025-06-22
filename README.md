> ### cstructer
> Proof of concept using LuaJIT Foreign Function Interface (FFI) library to both define and generate C-style tables at run time.
> This approach only supports byte aligned structures (packed) to avoid any alignment assumptions made by the compiler.
> <p align="center">
>  <img src="c-structer/.media/output.gif" width="640"/>
> </p>

---

> ### readonly-tables
> This approach uses `__metatable = false` to create a near read-only table in Lua. While not foolproof (due to the `debug` library), it clearly communicates that the table’s behavior shouldn't be modified.
> It’s a form of *Defense in Depth*—protecting against accidental misuse, not just malicious intent—and serves as a practical, intentional safeguard during development.
