global STASH := [1349, 720]

global CARD_SECTION := 0
global COORDINATES := []
global CARD_COUNTS := []

PixelGetColor, color1, STASH[1], STASH[2]

F1::
	; counter:=1
	For Key, V in COORDINATES {
		i:=1
		; cardCount := CARD_COUNTS[counter]
		ClickOnCoordinates(V[i], V[i+1], CARD_COUNTS[A_Index])
		; counter++
	}
return

^F1::
    SoundBeep, 800, 250
    MouseGetPos, X, Y
    
    InputBox, CARD_COUNT, Cards count, Write card's count
    if (CARD_COUNT = "") {
        Return
    } else {
        CARD_SECTION++
        COORDINATES.Push([X, Y])
        CARD_COUNTS.Push(CARD_COUNT)
    }
        
return


Alt & F1::
	Soundbeep, 587, 75
	Soundbeep, 622, 75
	Soundbeep, 587, 75
	Send, {Ctrl up}
    Reload
return

F2::
    SoundBeep, 300, 350
    MouseGetPos, X, Y

    STASH[1] := X
	STASH[2] := Y
return


ClickOnCoordinates(X, Y, count) {
	Loop, % count {
		if (color1 = color2) {
			MouseMove, STASH[1], STASH[2],0
			Send, {Ctrl Down}{Click}{Ctrl up}
			MouseClick, Right, X, Y,,0
			MouseMove, STASH[1], STASH[2],0
			; Sleep, 250
			Send, {Click}
			; Sleep, 250
			Send, {Ctrl Down}{Click}{Ctrl up}
			Send, {Ctrl Down}{Click}{Ctrl up}
			Send, {Ctrl Down}{Click}{Ctrl up}
			; MouseMove, X, Y
		}
		else
		{
			MouseMove, STASH[1], STASH[2],0
			Send, {Ctrl Down}{Click}{Ctrl up}

		}
		
	}
}

F3::
    SoundBeep, 300, 350
	PixelGetColor, color2, STASH[1], STASH[2]

	STASH[1] := X
	STASH[2] := Y
return


; CTRL + F1 Указание местоположение карточек и их количество
; CTRL + F2 Указание стеша по дефоту
; Alt  + F1 Остановка
