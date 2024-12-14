;~ Main loop starts here
InputBox, UserInput, Episode Number, Please enter a phone number., , 200, 100
loop %UserInput%
    {
    loop 
    {   CoordMode Pixel  ; Interprets the coordinates below as relative to the screen rather than the active window.
        ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, D1.png
        CoordMode Mouse
        if (FoundX==NULL ) 
            continue
        else MouseMove %FoundX%, %FoundY%,4
            sleep 2000
            click
        break
    }

    ;~ Click resolution
    sleep 2000

    MouseMove 1365, 718,4
    click

    ;~ Find continue button and click it
    loop 
    {   CoordMode Pixel  ; Interprets the coordinates below as relative to the screen rather than the active window.
        ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, 1.png
        CoordMode Mouse
        if (FoundX==NULL ) 
            continue
        else MouseMove %FoundX%, %FoundY%,4
            sleep 2000
            click
        break
    }

    ;~ Find Download button and click it
    loop 
    {   CoordMode Pixel  ; Interprets the coordinates below as relative to the screen rather than the active window.
        ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, 2.png
        CoordMode Mouse
        if (FoundX==NULL ) 
            continue
        else MouseMove %FoundX%, %FoundY%,4 
            click
        break
    }

    ;~ click 1st Tab
    sleep 2000
    Click 72, 28  

    ;~ go to next episode
    CoordMode Mouse
    MouseMove 1649, 593,4
    sleep 1000
    Click Right
    MouseMove 1649, 613,4
    sleep 1000
    Click
    sleep 2000
    Send ^w
    }

MsgBox Done 
ExitApp
#x::ExitApp  ; Win+X 