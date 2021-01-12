toggle := 0
return

^XButton1::
    toggle := !toggle
    if (toggle = 0){
        SoundBeep, 600, 50
        SoundBeep, 450, 100
    }
    if (toggle != 0){
        SoundBeep, 450, 100
        SoundBeep, 600, 50
    }
return

XButton1::
    if (toggle != 0){
        SoundBeep, 600, 200
        SoundBeep, 600, 200
        Loop{
            send, {XButton1}
            sleep, 5
            send, 1
            sleep, 5
            send, 2
            sleep, 5
            send, 4
            sleep, 5
            send, {SC12}
            sleep, 5
            send, {SC13}
            sleep, 5
            send, {sc14}
            sleep, 1000
            send, 3
	sleep, 5000
            if (toggle = 0) {
                SoundBeep, 300, 50
                SoundBeep, 300, 50
                break
            }

        }
    }
    else{
        SoundBeep, 400, 200
    }

return

