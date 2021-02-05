--ps: i dont have socket or transformice installed, so i just read the manual and some exemples
local transfromage = require('transfromage')
local client = transfromage.client()
local socket = require('socket') --yupii
local http = require('socket.http')
local https = require('ssl.https')
local pastebin = {'https://pastebin.com/raw/', 'https://pastebin.com/', 'pastebin.com/raw/', 'pastebin.com/'}
id = ''
token = ''


client:once("ready", function()
	client:connect("botzinho#0000", "password1nha")
end)

client:once("connection", function()
	client:joinTribeHouse()
end)

client:once('roomMessage', function(playerName, message, playerCommunity, playerId)
	if string.match(message, '%.load') then --jajaja eficientifyyy1!!
        local link = string.gsub(message, '(%.load )', '', 1) --remove .load
		if string.match(link, 'pastebin.com') then --check if is a pastebin link
			for i=1, #pastebin do --remove the pastebin.com part
				if link == check or check == nil then
					check = string.gsub(link, pastebin[i], '')
				end
			end
			if string.len(check) > 7 then --check if is a valid key, this is to turn all links in pastebin.com/raw
				local resp = {} 
				local b, c, h = https.request{url = 'https://pastebin.com/raw/'..check, headers = { ['Connection'] = 'close' }, sink = ltn12.sink.table(resp)}   
				if c~=200 then --get code response
    					client:sendRoomMessage('Error. Try again.') 
    				else
					if type(h) == "table" then
  						for k, v in pairs(h) do
    							print(k, ":", v)        
  						end
					end
					print(table.concat(resp))
					client:loadLua(table.concat(resp)) --load lua etc
					client:sendRoomMessage('Loaded.')
				end
			else
				client:sendRoomMessage('This is not a valid pastebin link!')
		else
			client:sendRoomMessage('Missing pastebin link!')
		end
	end
end)

client:start(id, token) --i'm a bit confused if i put this here or in the 9th line
--seems this will gonna work
