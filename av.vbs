Set objWMIService = GetObject("winmgmts:\\.\root\SecurityCenter2")
Set colItems = objWMIService.ExecQuery("Select * From AntiVirusProduct")
For Each objItem in colItems
WScript.Echo objItem.displayName
Next
