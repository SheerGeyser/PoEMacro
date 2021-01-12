Q::
    x:=1295
    y:=615
    offBool:= false
    Send, {Control down}
    for 0, v in [0,1,2,3,4,5,6,7,8,9,10,11] {
        if (offBool) {
            Break
        }

        Loop, 5 {
            MouseClick, left, x, y
            y:= y + 55

            if GetKeyState("RButton"){
                offBool:= true
                Break
            }
        }
        y:= 600
        x:= x + 52.5
    }
    Send, {Control up}

return