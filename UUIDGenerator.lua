-- Copied from : https://gist.github.com/jrus/3197011
-- Added math.randomseed() to guarantee the randomness

local random = math.random
math.randomseed(os.time())
return function()
    local template ='xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'
    return string.gsub(template, '[xy]', function (c)
        local v = (c == 'x') and random(0, 0xf) or random(8, 0xb)
        return string.format('%x', v)
    end)
end