# UniX
Library for Lua Encryption and Decryption based on Encryption Libraries.

## How to Use
```lua
local UniX = require("UniX.lua");

-- UniX:Add(EncryptionName, EncryptedValue, DecryptedValue);
UniX:Add("TEST", "Hello", "World");
print(UniX:Encode("TEST", "World") .. " " .. UniX:Decode("TEST", "Hello"));
--> "Hello World"
```
