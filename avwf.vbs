Set objWMIService = GetObject("winmgmts:\\.\root\SecurityCenter2")
prod = Array("AntiVirusProduct", "FirewallProduct")

For each item in prod
	Set colItems = objWMIService.ExecQuery("Select * From " & item)
	For Each objItem in colItems
		WScript.Echo objItem.displayName
	Next
Next
