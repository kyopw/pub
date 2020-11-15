--this will work to save the file created by bot_musica_sample.py
function ReadLine(file, line)
	local f = io.open(file, 'r')
    local i = 1
    for l in f:lines() do
        if i == line then return l end
        i = i + 1
    end
    f:close()
    return false -- Doesn't have that line
end

local content = ReadLine('convert2.txt', 42)
print(content)
io.read() -- just to dont close the lua.exe
