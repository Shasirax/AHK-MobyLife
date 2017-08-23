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

:O:kfdisp::{Space}att telefonens display är sprucken. Telefon har utsatts för yttre åverkan vilket innebär att vi kan inte laga telefons eventuellt övriga garantifel enligt reparationsprocessen förrän kostnadsförslag har godkänts. Detta är inget fabrikations eller tillverknings fel, skadan liknar det som uppstår genom tryck/tapp/kläm. Godkänns ej detta kostnadsförslag kommer telefon ej kunna repareras.

:O:kfspän::{Space}att telefonen har spänningsskador i sin display och tappskador längs ramen. Telefon har utsatts för yttre åverkan vilket innebär att vi kan inte laga telefons eventuellt övriga garantifel enligt reparationsprocessen förrän kostnadsförslag har godkänts. Detta är inget fabrikations eller tillverknings fel, skadan liknar det som uppstår genom tryck/tapp/kläm. Godkänns ej detta kostnadsförslag kommer telefon ej kunna repareras.

:O:kfdrb::{Space}att telefonens display och baksida är spruckna samt ram skadad. Telefon har utsatts för yttre åverkan vilket innebär att vi kan inte laga telefons eventuellt övriga garantifel enligt reparationsprocessen förrän kostnadsförslag har godkänts. Detta är inget fabrikations eller tillverknings fel, skadan liknar det som uppstår genom tryck/tapp/kläm. Godkänns ej detta kostnadsförslag kommer telefon ej kunna repareras.

:O:kfdr::{Space}att telefonens display är sprucken samt ram skadad. Telefon har utsatts för yttre åverkan vilket innebär att vi kan inte laga telefons eventuellt övriga garantifel enligt reparationsprocessen förrän kostnadsförslag har godkänts. Detta är inget fabrikations eller tillverknings fel, skadan liknar det som uppstår genom tryck/tapp/kläm. Godkänns ej detta kostnadsförslag kommer telefon ej kunna repareras.

:O:kfsub::{Space}att telefonens laddningsenhet är skadad. Telefon har utsatts för yttre åverkan vilket innebär att vi kan inte laga telefons eventuellt övriga garantifel enligt reparationsprocessen förrän kostnadsförslag har godkänts. Detta är inget fabrikations eller tillverknings fel, skadan liknar det som uppstår genom tryck/tapp/kläm. Godkänns ej detta kostnadsförslag kommer telefon ej kunna repareras.

:O:kfback::{Space}att telefonens baksida är sprucken. Enheten öppnas via baksidan och därför måste denna bytas. Telefon har utsatts för yttre åverkan vilket innebär att vi kan inte laga telefons eventuellt övriga garantifel enligt reparationsprocessen förrän kostnadsförslag har godkänts. Detta är inget fabrikations eller tillverknings fel, skadan liknar det som uppstår genom tryck/tapp/kläm. Godkänns ej detta kostnadsförslag kommer telefon ej kunna repareras.

:O:kfvät::{Space}telefonen har blivit utsatt för vätska/fukt. Tillverkaren godkänner inte yttre åverkan som garantiärende, detta är inget fabrikation eller tillverkningsfel. Vi anser inte det vara ekonomiskt försvarbart att reparera denna enhet då reparationspris kommer överstiga nypris. OBS{!} Bildbevis finns uppladdat åt kund i vårat system{!}

:O:kfroot::{Space}att telefonen är rootad. En icke original mjukvara är installerad på enheten. Tillverkaren godkänner inte detta som garantiärende.

:O:kfbat::{Space}att batteriets garanti har gått ut. (1 år){Space}

:O:kfgar::{Space}att enhets garanti har gått ut. (2 år)

:O:kfskrot::{Space}displayen är sprucken, ramen och chassit böjda, skador på kretskortet - kanske kortslutet, avger felaktiga strömvärden. Telefonen har blivit utsatt för yttre åverkan, tillverkaren godkänner inte detta som garanti ärende. Detta är inget fabrikation eller tillverknings fel, skadan liknar det som uppstår genom tryck/tapp/kläm. Reparation är inte lönsam eftersom reparationskostnaden skulle överstiga nypris. Kostnadsförslaget avser retur utan åtgärd. 

:O:kfdöm::
	InputBox, Varfor, Anledning, Varför är enheten utdömd?,,550,130,,,,,
	Send, Det är inte garanti på apparaten och den går inte att reparera på grund av intrång. %Varfor%. Tillverkaren godkänner inte detta som garanti ärende. Vi erbjuder ingen reparation pga eventuella ESD-Skador som kan ha uppkommit vid intrång.
Return

:O:kfupp::{Space}att enheten är låst till ett Google-konto. Detta är en stöldsskyddstjänst från Google och upplåsning täcks inte av garanti. För att kunna fortsätta med undersökning av din enhet måste telefonen låsas upp. Om kund har dessa uppgifter tillgängliga vänligen återkom med dessa uppgifter så bortses  kostnadsförslaget och ärendet fortskrider  som vanligt. Om kund nyligen bytt lösenord på sin mail/google-account kommer det dröja 72h innan detta lösenord kommer vara giltigt / kunna användas.

:O:kfifh::Inget fel funnet. Felsökt efter kunds beskrivning. Kostnadsförslag avser retur utan reparation. Test av samtal, laddning och funktioner ok. 

:O:kfstöld::{Space}enheten är stöldspärrad. Detta är inget vi kan laga utan ni får kontakta operatör eller polisen för mer information.

:O:kfefter::Efter godkänt kostnadsförslag så fortsätter garantireparation om så behövs.

;****************KF DK TEXT*****************

:CO:dkspän::Enheden har ydre skader i form af trykskader. Skærmen har spænninger i sig som kommer fra pres mod skærm. Garantien gælder ikke i dette tilfælde.

:CO:dklåst::Telefonen er låst med personlig kode eller mønsterkode.Oplys venligst denne kode, idet telefonen ikke kan afprøves for den af kunden oplyste fejl når den er låst. Kendes koden ikke, så vil der blive fremsendt et prisoverslag på oplåsning.

:CO:DKKVITTO::For at kunne viderebehandle den indsendte enhed, bedes du fremsende garantibevis med pris, gyldig købsdato og imeinummer.

:CO:dkbat::Garantien på batteriet (12 måneder) er udløbet. Øvrige fejl repareres hvis det er muligt, såfremt de er under garantien.

:CO:dkvät::Der er ingen garanti på enheden og ikke kan repareres, fordi telefonen er væskeskadet. Det er ikke økonomisk forsvarligt at reparere denne enhed, når prisen på reparationen vil overstige den aktuelle markedspris.

;****************KF ENG TEXT****************

:CO:engvät::The device is not covered by warranty claims and we do not offer a repair because the phone has been exposed to liquid. The producer does not allow this as a warranty covering repair and the repair center does not consider it to be economically viable since the cost excedes the cost of a new unit. Please observe the photos attached to the service order.


;****************Beskrivelse****************
:CO:KOM::
	InputBox, Delar, Delar, Vilka delar byttes?,,250,130,,,,,kretskort
	Send, Byte av %Delar%.{enter}Mjukvara uppdaterad. Enhet återställd. {enter}Test av samtal, laddning och funktioner ok. {enter 2}Skick: Repor på display, ram och baksida.
Return

:CO:KOMKF::
	InputBox, Delar, Delar, Vilka delar byttes?,,250,130,,,,,display
	Send, Byte av %Delar%.{enter}Test av samtal, laddning och begränsat funktionstest ok. {enter 2}Skick:{Space}
Return

:CO:mictest::Kund kan själv testa samtalshögtalare samt mikrofon genom att skriva in *{#}0283{#} i telefon-appen. Detta öppnar en testmeny.

:CO:IFH::Inget fel funnet. Felsökt efter kunds beskrivning.{enter}Returneras utan reparation.{enter}Test av samtal, laddning och funktioner ok. {enter 2}Skick:{Space} 

:CO:tänkpå::Tänk på att Samsung ansvarar inte för nedsatt funktionalitet orsakad genom t.ex. installation av tredjeparts-mjukvaran. Ni ansvarar själva för vad Ni installerar i telefonen och hur detta påverkar telefonen/mjukvarans funktionalitet.

:CO:RUR::Returnerad utan åtgärd på kunds begäran.

:CO:RURU::Returnerad utan åtgärd på grund av uteblivet svar.

:CO:SKROT::Skrotas på kunds begäran.

:CO:KABEL::Skickar även med en ny laddningskabel.

:CO:STRÖM::Uppmätta strömvärden på telefonen med Samsungs power/current tester är normala.

:CO:KALI::Kalibreringskontroll av sändning och mottagning U.A, helt enligt specifikationerna.

:CO:DRB::Repor på display, ram och baksida.

:CO:RCD::Rekl CNA Disp{Space}

:CO:SCON::Skickas till Conmodo enligt avtal. {Enter}Gammalt ordernummer: NUMMER .{Enter}Nytt ordernummer: NUMMER .{Enter}Undersökningsavgift erlagd.

:CO:VARM::Att enheten blir varm vid laddning kan bero på att enheten har funktionen snabbladdning. Denna gör att enheten laddar snabbt men kan också skapa högre värme i enheten. Detta är normalt. Om kund vill stänga av denna funktionen så finns det inställningar för detta under Batteri i inställningsappen. 

:CO:UTLÄNDSKMOBIL::Enheten är ej producerad för bruk inom Skandinavien. {Enter}Detta gör att den kan ha problem vid bruk inom Skandinavien med vissa operatörer. {Enter}Tyvärr så kan vi reparera detta då det inte är ett fel. {Enter}Vänligen kontakta er operatör för mer information.

;**************DK Beskrivelse***************

:CO:BYTE::udskiftet. SW opdateret. Afprøvet og fundet OK. {enter}Venligst oplad telefonen 1 time før brug. 

;*****************Meldinger*****************
:CO:VÄNTAR::Hej. Telefonens reparation är påbörjad, men dessvärre måste vi vänta på delar. Så fort delen kommer in så börjar arbetet igen. Mvh MobyLife

:CO:LCDFÄRG::Lcd bytt på grund av färgsläpp. {Space}

:CO:IMEIFEL::
	InputBox, IMEI1, IMEI, Enhets IMEI?,,250,130,,,,,
	InputBox, IMEI2, IMEI, Orders IMEI?,,250,130,,,,,
	Send, Fel IMEI på inskickad enhet. Enhets IMEI: %IMEI1%. Orders/kvittos IMEI: %IMEI2%. Är detta rätt enhet?
Return

:CO:TELESTÖLD::Hej, jag heter Felix Brolléus och jag jobbar på MobyLife i Åkarp. Jag har en mobil som inte vill koppla upp till nät här så jag tänkte om ni kunde kolla om den är stöldspärrad? IMEI:{Space}

;*****************Start program*************
^e::Run, "C:\Users\170310\Desktop\Etel.lnk"

