#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Menu, Tray, Tip, EtelGaranti. Helps with Etel and other stuff. Made by and for Felix.

:CO:EFB::
	Send, felixb{Tab}
	Sleep, 50
	Send, 1234{Enter}
Return

F9::
	WinActivate, Fenrir
	Sleep, 10
	WinActivate, Fenrir
	Send, !{F10}
	Sleep, 500
	Send, smart100{enter}
Return

^!v:: 
	MyString := Clipboard
	Send, %MyString%
return

;F2 Etel
F2::
	WinActivate, Etel
Return

F4::
	WinActivate, Samsung Galaxy Must
Return

;Garanti dropdowns 
;L1
^Numpad1::
	Send, p
	Send, {TAB down}{TAB up}
	Sleep, 20
	Send, l
	Sleep, 25
	Send, {TAB down}{TAB up}
	Sleep, 10
	Send, c
	Sleep, 10
	Send, {TAB down}{TAB up}
	Sleep, 10
	Send, {TAB down}{TAB up}
	Sleep, 10
	Send, f
	Sleep, 10
	Send, {TAB down}{TAB up}
	Sleep, 10
	Send, 1
	Sleep, 10
	Send, {TAB down}{TAB up}
	Sleep, 10
	Send, 2
Return

;L2
^Numpad0::
	Send, p
	Send, {TAB down}{TAB up}
	Sleep, 20
	Send, l
	Sleep, 25
	Send, l
	Sleep, 10
	Send, {TAB down}{TAB up}
	Sleep, 10
	Send, c
	Sleep, 10
	Send, {TAB down}{TAB up}
	Sleep, 10
	Send, {TAB down}{TAB up}
	Sleep, 10
	Send, {TAB down}{TAB up}
	Sleep, 10
	Send, n
	Sleep, 10
	Send, {TAB down}{TAB up}
	Sleep, 10
	Send, a
Return

;******************KF TEXT******************

:O:kfdisp::{Space}att telefonens display �r sprucken. Telefon har utsatts f�r yttre �verkan vilket inneb�r att vi kan inte laga telefons eventuellt �vriga garantifel enligt reparationsprocessen f�rr�n kostnadsf�rslag har godk�nts. Detta �r inget fabrikations eller tillverknings fel, skadan liknar det som uppst�r genom tryck/tapp/kl�m. Godk�nns ej detta kostnadsf�rslag kommer telefon ej kunna repareras.

:O:kfsp�n::{Space}att telefonen har sp�nningsskador i sin display och tappskador l�ngs ramen. Telefon har utsatts f�r yttre �verkan vilket inneb�r att vi kan inte laga telefons eventuellt �vriga garantifel enligt reparationsprocessen f�rr�n kostnadsf�rslag har godk�nts. Detta �r inget fabrikations eller tillverknings fel, skadan liknar det som uppst�r genom tryck/tapp/kl�m. Godk�nns ej detta kostnadsf�rslag kommer telefon ej kunna repareras.

:O:kfdrb::{Space}att telefonens display och baksida �r spruckna samt ram skadad. Telefon har utsatts f�r yttre �verkan vilket inneb�r att vi kan inte laga telefons eventuellt �vriga garantifel enligt reparationsprocessen f�rr�n kostnadsf�rslag har godk�nts. Detta �r inget fabrikations eller tillverknings fel, skadan liknar det som uppst�r genom tryck/tapp/kl�m. Godk�nns ej detta kostnadsf�rslag kommer telefon ej kunna repareras.

:O:kfdr::{Space}att telefonens display �r sprucken samt ram skadad. Telefon har utsatts f�r yttre �verkan vilket inneb�r att vi kan inte laga telefons eventuellt �vriga garantifel enligt reparationsprocessen f�rr�n kostnadsf�rslag har godk�nts. Detta �r inget fabrikations eller tillverknings fel, skadan liknar det som uppst�r genom tryck/tapp/kl�m. Godk�nns ej detta kostnadsf�rslag kommer telefon ej kunna repareras.

:O:kfsub::{Space}att telefonens laddningsenhet �r skadad. Telefon har utsatts f�r yttre �verkan vilket inneb�r att vi kan inte laga telefons eventuellt �vriga garantifel enligt reparationsprocessen f�rr�n kostnadsf�rslag har godk�nts. Detta �r inget fabrikations eller tillverknings fel, skadan liknar det som uppst�r genom tryck/tapp/kl�m. Godk�nns ej detta kostnadsf�rslag kommer telefon ej kunna repareras.

:O:kfback::{Space}att telefonens baksida �r sprucken. Enheten �ppnas via baksidan och d�rf�r m�ste denna bytas. Telefon har utsatts f�r yttre �verkan vilket inneb�r att vi kan inte laga telefons eventuellt �vriga garantifel enligt reparationsprocessen f�rr�n kostnadsf�rslag har godk�nts. Detta �r inget fabrikations eller tillverknings fel, skadan liknar det som uppst�r genom tryck/tapp/kl�m. Godk�nns ej detta kostnadsf�rslag kommer telefon ej kunna repareras.

:O:kfv�t::{Space}telefonen har blivit utsatt f�r v�tska/fukt. Tillverkaren godk�nner inte yttre �verkan som garanti�rende, detta �r inget fabrikation eller tillverkningsfel. Vi anser inte det vara ekonomiskt f�rsvarbart att reparera denna enhet d� reparationspris kommer �verstiga nypris. OBS{!} Bildbevis finns uppladdat �t kund i v�rat system{!}

:O:kfroot::{Space}att telefonen �r rootad. En icke original mjukvara �r installerad p� enheten. Tillverkaren godk�nner inte detta som garanti�rende.

:O:kfbat::{Space}att batteriets garanti har g�tt ut. (1 �r){Space}

:O:kfgar::{Space}att enhets garanti har g�tt ut. (2 �r)

:O:kfskrot::{Space}displayen �r sprucken, ramen och chassit b�jda, skador p� kretskortet - kanske kortslutet, avger felaktiga str�mv�rden. Telefonen har blivit utsatt f�r yttre �verkan, tillverkaren godk�nner inte detta som garanti �rende. Detta �r inget fabrikation eller tillverknings fel, skadan liknar det som uppst�r genom tryck/tapp/kl�m. Reparation �r inte l�nsam eftersom reparationskostnaden skulle �verstiga nypris. Kostnadsf�rslaget avser retur utan �tg�rd. 

:O:kfd�m::
	InputBox, Varfor, Anledning, Varf�r �r enheten utd�md?,,550,130,,,,,
	Send, Det �r inte garanti p� apparaten och den g�r inte att reparera p� grund av intr�ng. %Varfor%. Tillverkaren godk�nner inte detta som garanti �rende. Vi erbjuder ingen reparation pga eventuella ESD-Skador som kan ha uppkommit vid intr�ng.
Return

:O:kfupp::{Space}att enheten �r l�st till ett Google-konto. Detta �r en st�ldsskyddstj�nst fr�n Google och uppl�sning t�cks inte av garanti. F�r att kunna forts�tta med unders�kning av din enhet m�ste telefonen l�sas upp. Om kund har dessa uppgifter tillg�ngliga v�nligen �terkom med dessa uppgifter s� bortses  kostnadsf�rslaget och �rendet fortskrider  som vanligt. Om kund nyligen bytt l�senord p� sin mail/google-account kommer det dr�ja 72h innan detta l�senord kommer vara giltigt / kunna anv�ndas.

:O:kfifh::Inget fel funnet. Fels�kt efter kunds beskrivning. Kostnadsf�rslag avser retur utan reparation. Test av samtal, laddning och funktioner ok. 

:O:kfst�ld::{Space}enheten �r st�ldsp�rrad. Detta �r inget vi kan laga utan ni f�r kontakta operat�r eller polisen f�r mer information.

:O:kfefter::Efter godk�nt kostnadsf�rslag s� forts�tter garantireparation om s� beh�vs.

;****************KF DK TEXT*****************

:CO:dksp�n::Enheden har ydre skader i form af trykskader. Sk�rmen har sp�nninger i sig som kommer fra pres mod sk�rm. Garantien g�lder ikke i dette tilf�lde.

:CO:dkl�st::Telefonen er l�st med personlig kode eller m�nsterkode.Oplys venligst denne kode, idet telefonen ikke kan afpr�ves for den af kunden oplyste fejl n�r den er l�st. Kendes koden ikke, s� vil der blive fremsendt et prisoverslag p� opl�sning.

:CO:DKKVITTO::For at kunne viderebehandle den indsendte enhed, bedes du fremsende garantibevis med pris, gyldig k�bsdato og imeinummer.

:CO:dkbat::Garantien p� batteriet (12 m�neder) er udl�bet. �vrige fejl repareres hvis det er muligt, s�fremt de er under garantien.

:CO:dkv�t::Der er ingen garanti p� enheden og ikke kan repareres, fordi telefonen er v�skeskadet. Det er ikke �konomisk forsvarligt at reparere denne enhed, n�r prisen p� reparationen vil overstige den aktuelle markedspris.

;****************KF ENG TEXT****************

:CO:engv�t::The device is not covered by warranty claims and we do not offer a repair because the phone has been exposed to liquid. The producer does not allow this as a warranty covering repair and the repair center does not consider it to be economically viable since the cost excedes the cost of a new unit. Please observe the photos attached to the service order.


;****************Beskrivelse****************
:CO:KOM::
	InputBox, Delar, Delar, Vilka delar byttes?,,250,130,,,,,kretskort
	Send, Byte av %Delar%.{enter}Mjukvara uppdaterad. Enhet �terst�lld. {enter}Test av samtal, laddning och funktioner ok. {enter 2}Skick: Repor p� display, ram och baksida.
Return

:CO:KOMKF::
	InputBox, Delar, Delar, Vilka delar byttes?,,250,130,,,,,display
	Send, Byte av %Delar%.{enter}Test av samtal, laddning och begr�nsat funktionstest ok. {enter 2}Skick:{Space}
Return

:CO:mictest::Kund kan sj�lv testa samtalsh�gtalare samt mikrofon genom att skriva in *{#}0283{#} i telefon-appen. Detta �ppnar en testmeny.

:CO:IFH::Inget fel funnet. Fels�kt efter kunds beskrivning.{enter}Returneras utan reparation.{enter}Test av samtal, laddning och funktioner ok. {enter 2}Skick:{Space} 

:CO:t�nkp�::T�nk p� att Samsung ansvarar inte f�r nedsatt funktionalitet orsakad genom t.ex. installation av tredjeparts-mjukvaran. Ni ansvarar sj�lva f�r vad Ni installerar i telefonen och hur detta p�verkar telefonen/mjukvarans funktionalitet.

:CO:RUR::Returnerad utan �tg�rd p� kunds beg�ran.

:CO:RURU::Returnerad utan �tg�rd p� grund av uteblivet svar.

:CO:SKROT::Skrotas p� kunds beg�ran.

:CO:KABEL::Skickar �ven med en ny laddningskabel.

:CO:STR�M::Uppm�tta str�mv�rden p� telefonen med Samsungs power/current tester �r normala.

:CO:KALI::Kalibreringskontroll av s�ndning och mottagning U.A, helt enligt specifikationerna.

:CO:DRB::Repor p� display, ram och baksida.

:CO:RCD::Rekl CNA Disp{Space}

:CO:SCON::Skickas till Conmodo enligt avtal. {Enter}Gammalt ordernummer: NUMMER .{Enter}Nytt ordernummer: NUMMER .{Enter}Unders�kningsavgift erlagd.

:CO:VARM::Att enheten blir varm vid laddning kan bero p� att enheten har funktionen snabbladdning. Denna g�r att enheten laddar snabbt men kan ocks� skapa h�gre v�rme i enheten. Detta �r normalt. Om kund vill st�nga av denna funktionen s� finns det inst�llningar f�r detta under Batteri i inst�llningsappen. 

:CO:UTL�NDSKMOBIL::Enheten �r ej producerad f�r bruk inom Skandinavien. {Enter}Detta g�r att den kan ha problem vid bruk inom Skandinavien med vissa operat�rer. {Enter}Tyv�rr s� kan vi reparera detta d� det inte �r ett fel. {Enter}V�nligen kontakta er operat�r f�r mer information.

;**************DK Beskrivelse***************

:CO:BYTE::udskiftet. SW opdateret. Afpr�vet og fundet OK. {enter}Venligst oplad telefonen 1 time f�r brug. 

;*****************Meldinger*****************
:CO:V�NTAR::Hej. Telefonens reparation �r p�b�rjad, men dessv�rre m�ste vi v�nta p� delar. S� fort delen kommer in s� b�rjar arbetet igen. Mvh MobyLife

:CO:LCDF�RG::Lcd bytt p� grund av f�rgsl�pp. {Space}

:CO:IMEIFEL::
	InputBox, IMEI1, IMEI, Enhets IMEI?,,250,130,,,,,
	InputBox, IMEI2, IMEI, Orders IMEI?,,250,130,,,,,
	Send, Fel IMEI p� inskickad enhet. Enhets IMEI: %IMEI1%. Orders/kvittos IMEI: %IMEI2%. �r detta r�tt enhet?
Return

:CO:TELEST�LD::Hej, jag heter Felix Broll�us och jag jobbar p� MobyLife i �karp. Jag har en mobil som inte vill koppla upp till n�t h�r s� jag t�nkte om ni kunde kolla om den �r st�ldsp�rrad? IMEI:{Space}

;*****************Start program*************
^e::Run, "C:\Users\170310\Desktop\Etel.lnk"

