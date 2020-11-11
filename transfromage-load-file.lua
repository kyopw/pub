local api = require('transfromage')
local client = transfromage.client()
local user = 'nickname#0000'
local senha = 'password1234'
-- you will need python 3.2
-- i dont know if its forbidden to use another language in the Task :oo maybe not? maybe i can?
-- you can laugh just a bite
local py = '\n# sorry for this, luasocket didnt works on my pc ;(\ntry:\n	f = open("page.lua", "w"); f.write(""); f.close() #reset file\nexcept:\n	f = open("page.lua", "x"); f.write(""); f.close()\n\nimport urllib.request\n\nlink = urllib.request.Request(request)\ntry:\n    response = urllib.request.urlopen(link)\nexcept:\n    print("o_0")\n\nhtmlBytes = response.read()\nhtmlStr = htmlBytes.decode("utf8")\nhtmlSplit = htmlStr.split("\\n")\n\nfor line in htmlSplit:\n	f = open("page.lua", "a")\n	f.write(line)\n	f.close()\nprint("sucess :o")'

-- useful funcs
function fileContent(file)
	local page = io.open(file, 'rb')
	content = page:read('*a')
	page:close()
	return content
end
function pythonExe(link)
	local python = io.open('url.py', 'w')
	python:write('request = "'..link..'"'..py)
	io.close(python)
	os.execute('url.py')
end

--start
client:once('ready', function()
	client:connect(user, senha)
end)

client:once('connection', function()
	print('conneted in: '..user)
	client:joinTribeHouse()
end)

clinet:on('roomMessage', function(player, message)
	t = {}
	for v in string.gmatch(message, '[^%s]+') do
  		pos = 1
   		table.insert(t, pos, v)
   		pos = pos+1
	end
	if t[2] == '.load' then
		if string.match(t[1], 'pastebin.com/raw/') then
			raw = t[1]
			pythonExe(raw)
			content = fileContent('page.lua')
			client:loadLua (content)
		elseif string.match(t[1], 'pastebin.com/') then
			local raw = string.gsub(t[1], '(pastebin.com/)', 'pastebin.com/raw/')
			print(raw)
			pythonExe(raw)
			content = fileContent('page.lua')
			client:loadLua (content)
		else
			client:sendRoomMessage('requires a pastebin link')
		end
	end
end)

client:setCommunity(transfromage.enum.community.br)
client:start('45405420', 'API_TOKEN')
