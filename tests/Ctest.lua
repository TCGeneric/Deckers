local ConfigLoader = require "./ConfigLoader"
local __test = {}

-- #1. Loading a config and getting the value
local function func1()
    ConfigLoader.load("./config.yml")
    assert(ConfigLoader.get("debug") == "debug", "#1. Expected config value and actual config value doesn't match")
end

function __test.test_all()
    func1()
    ConfigLoader.clear()
    print("Passed all ConfigLoader tests")
end

return __test