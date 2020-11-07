#SingleInstance, Force ; o script tem que ser refeito pra cada computador diferente pq as dimensões e posições mudam
Clipboard := "" ; isso ta mt mt falho e nada eficiente, mas funciona e.e
contk := "true [false]"
ar := StrSplit(contk,["[","]"])
cons1 := ar.1
cons2 := ar.2
Sleep, 200
http := "https://www.youtube.com/watch?"
WinActivate, Transformice
WinWaitActive, Transformice
tocar := "!p"
While (cons2 contains false)
{
    if cons2 contains false
    {
        Sleep, 5
        Click, 79, 595, down
        MouseMove, 479, 595, 0
        Click, up
        Sleep, 5
        Send ^{c} 
        ClipWait
        text := Clipboard
        ;text := "> [br] [username#0002], how are u?"
        arr := StrSplit(text,["[","]"])
        text1 := arr.1 ; nada
        text2 := arr.2 ; nome
        text3 := arr.3 ; mensagem
        if text3 contains .play
        {
            if text3 contains v=
            {
                Send, {Enter}
                SendRaw, ...
                Send, {Enter} 
                Send, {Enter}
                ;Send, Carregando arquivo, aguarde!
                yt := StrSplit(text3,[" "])
                tocado1 := yt.1 ; nada
                tocado2 := yt.2 ; comando
                tocado3 := yt.3 ; link
                WinActivate, Mp3Skull - YouTube to Mp3 Converter - Vivaldi
                WinWait, Mp3Skull - YouTube to Mp3 Converter - Vivaldi

            }
            else
            {
                Send, {Enter} 
                SendRaw, ._.
                Send, {Enter} 
                Send, {Enter}
            ;Send, Carregando arquivo, aguarde!
                yt := StrSplit(text3,[" "])
                tocado1 := yt.1 ; nada
                tocado2 := yt.2 ; comando
                tocado3 := yt.3 " " yt.4 " " yt.5 " " yt.6 " " yt.7 " " yt.8 " " yt.9 ; link
                WinActivate, YouTube - Vivaldi
                WinWait, YouTube - Vivaldi
                Click, 144, 50
                Sleep, 3000
                Click, 623, 99
                Send, %tocado3%
                Send, {Enter}
                Sleep, 2000
                Click, 517, 336
                Sleep, 2000
                Click, 333, 56
                Send ^{c}
                Send ^{c}
                Sleep, 500
                linke := Clipboard
                SendRaw, yout
                Sleep, 500
                Send, {Enter}
                WinActivate, Mp3Skull - YouTube to Mp3 Converter - Vivaldi
                WinWait, Mp3Skull - YouTube to Mp3 Converter - Vivaldi
            }
            Click, 144, 50
            Sleep, 3000
            Click, 947, 209
            if linke contains youtu
            {
                Send, %linke%
            }
            else
            {
                Send,  %http%%tocado3%
            }
            Click, 1069, 210
            Sleep, 2000
            Click, 870, 210, right
            Click, 925, 440
            musica := Clipboard
            WinActivate, Transformice
            WinWait, Transformice
            Click, 165, 617
            musiq := "/musique"
            mc := StrSplit(musica,["/"])
            mc1 := mc.1 ; nada
            mc2 := mc.2 ; comando
            mc3 := mc.3 ; link
            mc4 := mc.4 ; link
            mc5 := mc.5 ; link
            if mc3 contains ljjlri
            {
                Send, %musiq% %musica%
                Send, {Enter}
                Sleep, 1200
                Click, 165, 617
                SendRaw, sucesso!
                Send, {Enter}
            }
            else
            {
                Send, sintaxe errada
                Send, {Enter}
            }
        }
        if text3 contains .p
        {
            if text3 contains _
            {
                Send, {Enter} 
                SendRaw, ._.
                Send, {Enter} 
                Send, {Enter}
            ;Send, Carregando arquivo, aguarde!
                yt := StrSplit(text3,[" "])
                tocado1 := yt.1 ; nada
                tocado2 := yt.2 ; comando
                tocado3 := yt.3 " " yt.4 " " yt.5 " " yt.6 " " yt.7 " " yt.8 " " yt.9 ; link
                WinActivate, YouTube - Vivaldi
                WinWait, YouTube - Vivaldi
                Click, 144, 50
                Sleep, 3000
                Click, 623, 99
                Send, %tocado3%
                Send, {Enter}
                Sleep, 2000
                Click, 517, 336
                Sleep, 2000
                Click, 333, 56
                Send ^{c}
                Send ^{c}
                Sleep, 500
                linke := Clipboard
                SendRaw, yout
                Sleep, 500
                Send, {Enter}
                WinActivate, Mp3Skull - YouTube to Mp3 Converter - Vivaldi
                WinWait, Mp3Skull - YouTube to Mp3 Converter - Vivaldi

            }
            else
            {
                Send, {Enter}
                SendRaw, ...
                Send, {Enter} 
                Send, {Enter}
                ;Send, Carregando arquivo, aguarde!
                yt := StrSplit(text3,[" "])
                tocado1 := yt.1 ; nada
                tocado2 := yt.2 ; comando
                tocado3 := yt.3 ; link
                WinActivate, Mp3Skull - YouTube to Mp3 Converter - Vivaldi
                WinWait, Mp3Skull - YouTube to Mp3 Converter - Vivaldi
            }
            Click, 144, 50
            Sleep, 3000
            Click, 947, 209
            if linke contains youtu
            {
                Send, %linke%
            }
            else
            {
                Send,  %http%%tocado3%
            }
            Click, 1069, 210
            Sleep, 2000
            Click, 870, 210, right
            Click, 925, 440
            musica := Clipboard
            WinActivate, Transformice
            WinWait, Transformice
            Click, 165, 617
            musiq := "/musique"
            mc := StrSplit(musica,["/"])
            mc1 := mc.1 ; nada
            mc2 := mc.2 ; comando
            mc3 := mc.3 ; link
            mc4 := mc.4 ; link
            mc5 := mc.5 ; link
            if mc3 contains ljjlri
            {
                Send, %musiq% %musica%
                Send, {Enter}
                Sleep, 1200
                Click, 165, 617
                SendRaw, sucesso!
                Send, {Enter}
            }
            else
            {
                Send, sintaxe errada
                Send, {Enter}
            }
        }
        if text3 contains .tocar
        {
            if text3 contains _
            {
                Send, {Enter} 
                SendRaw, ._.
                Send, {Enter} 
                Send, {Enter}
            ;Send, Carregando arquivo, aguarde!
                yt := StrSplit(text3,[" "])
                tocado1 := yt.1 ; nada
                tocado2 := yt.2 ; comando
                tocado3 := yt.3 " " yt.4 " " yt.5 " " yt.6 " " yt.7 " " yt.8 " " yt.9 ; link
                WinActivate, YouTube - Vivaldi
                WinWait, YouTube - Vivaldi
                Click, 144, 50
                Sleep, 3000
                Click, 623, 99
                Send, %tocado3%
                Send, {Enter}
                Sleep, 2000
                Click, 517, 336
                Sleep, 2000
                Click, 333, 56
                Send ^{c}
                Send ^{c}
                Sleep, 500
                linke := Clipboard
                SendRaw, yout
                Sleep, 500
                Send, {Enter}
                WinActivate, Mp3Skull - YouTube to Mp3 Converter - Vivaldi
                WinWait, Mp3Skull - YouTube to Mp3 Converter - Vivaldi

            }
            else
            {
                Send, {Enter}
                SendRaw, ...
                Send, {Enter} 
                Send, {Enter}
                ;Send, Carregando arquivo, aguarde!
                yt := StrSplit(text3,[" "])
                tocado1 := yt.1 ; nada
                tocado2 := yt.2 ; comando
                tocado3 := yt.3 ; link
                WinActivate, Mp3Skull - YouTube to Mp3 Converter - Vivaldi
                WinWait, Mp3Skull - YouTube to Mp3 Converter - Vivaldi
            }
            Click, 144, 50
            Sleep, 3000
            Click, 947, 209
            if linke contains youtu
            {
                Send, %linke%
            }
            else
            {
                Send,  %http%%tocado3%
            }
            Click, 1069, 210
            Sleep, 2000
            Click, 870, 210, right
            Click, 925, 440
            musica := Clipboard
            WinActivate, Transformice
            WinWait, Transformice
            Click, 165, 617
            musiq := "/musique"
            mc := StrSplit(musica,["/"])
            mc1 := mc.1 ; nada
            mc2 := mc.2 ; comando
            mc3 := mc.3 ; link
            mc4 := mc.4 ; link
            mc5 := mc.5 ; link
            if mc3 contains ljjlri
            {
                Send, %musiq% %musica%
                Send, {Enter}
                Sleep, 1200
                Click, 165, 617
                SendRaw, sucesso!
                Send, {Enter}
            }
            else
            {
                Send, sintaxe errada
                Send, {Enter}
            }
        }
        ;if text3 contains .inv desativado
        ;{
        ;    Send, {Enter} 
        ;    SendRaw, ._.
        ;    Send, {Enter} 
        ;    Send, {Enter}
        ;    yt := StrSplit(text3,[" "])
        ;    tocado1 := yt.1 ; nada
        ;    tocado2 := yt.2 ; comando
        ;    tocado3 := yt.3 ; nick
        ;    Click, 165, 617
        ;    SendRaw, /inv  
        ;    Send,  %tocado3%
        ;   Send, {Enter}
        ;    Sleep, 200
        ;    Click, 165, 617
        ;    Send, %tocado3% convidada
        ;   Send, {Enter}
        ;}

        if text3 contains .stop
        {
            Click, 165, 617
            SendRaw, música parada.
            Send, {Enter} 
            Send, {Enter}
            pstope := "/musique stop"
            Send, %pstope%
            Send, {Enter} 
        }
         if text3 contains .merquior
        {
            Click, 165, 617
            SendRaw, gatinho
            Send, {Enter} 
        }
        if text3 contains .help
        {
            Click, 165, 617
            helpe := ".p (link da musica) - toca um link do youtube, .stop - para a música"
            Send, %helpe%
            Send, {Enter} 
            Sleep, 500
            Send, {Enter}
            Send, a música só toca pra qm é da tribo
            Send, {Enter}
        }
    } 
}

^x::
ar := StrSplit(contk,["[","]"])
cons2 := ar.1
cons1 := ar.2
Sleep, 1000
return

^b::
ar := StrSplit(contk,["[","]"])
cons1 := ar.1
cons2 := ar.2
Sleep, 1000
return

^l::
ar := StrSplit(contk,["[","]"])
cons2 := ar.1
cons1 := ar.2
ExitApp
return
