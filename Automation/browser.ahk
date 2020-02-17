; Array of URLs you want to open
				urlA		:=	["https://www.google.com/search?q=Stéphane+Sarrazin+%2B+Alfred+and+Plantagenet+email",
				,"https://www.google.com/search?q=Carol+Moffatt+%2B+Algonquin+Highlands+email"
				,"https://www.google.com/search?q=John+Logel+%2B+Alnwick/Haldimand+email"
				,"https://www.google.com/search?q=Bob+Currie+%2B+Amaranth+email"
				,"https://www.google.com/search?q=Bob+Macphail+%2B+Armour +email"
				,"https://www.google.com/search?q=Jean+Marc+Boileau+%2B+Armstrong+email"
				,"https://www.google.com/search?q=Walter+Stack+%2B+Arnprior+email"
				,"https://www.google.com/search?q=Steve+Hammell+%2B+Arran-Elderslie+email"
				,"https://www.google.com/search?q=Glen+McNeil+%2B+Ashfield-Colborne-Wawanosh+email"]

; Build list of urls on one line
urlList		:= ""
for index, value in urlA
	urlList	.= ((A_Index = 1) ? "" : " ") . value
return

; Open URLs in already opened Chrome window
;F1::Run, % "chrome.exe " urlList

; Make a new Chrome window and open URLs there
F1::Run, % "chrome.exe --new-window --incognito " urlList

F2::Send {LCtrl down}f{LCtrl up}@{Enter}