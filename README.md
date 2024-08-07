# Geheis

Geheime Botschaften in Heise-Postings

## Usage

	git clone https://github.com/hilbix/geheis.git
	curl URL | geheis/geheis

Beispielspost ohne Botschaft ([`1.txt`](1.txt)):

```
curl 'https://www.heise.de/forum/heise-online/Kommentare/Malware-Verteilung-ueber-GitHub-Geister-Account-Netzwerk-entdeckt/Re-Gewinnspiel-Wer-findet-die-geheime-Botschaft-in-diesem-Text-von-mir/posting-44250700/show/' | geheis/geheis
```

Beispielspost mit Botschaft `0100` ([`2.txt`](2.txt)):

```
curl 'https://www.heise.de/forum/heise-online/Kommentare/Malware-Verteilung-ueber-GitHub-Geister-Account-Netzwerk-entdeckt/Gewinnspiel-Wer-findet-die-geheime-Botschaft-in-diesem-Text-von-mir/posting-44247573/show/' | geheis/geheis
```

Beispielspost mit inverser Botschaft `1011` ([`3.txt`](3.txt)):

```
curl 'https://www.heise.de/forum/heise-online/Kommentare/Einbrecher-loeschen-tausende-Geraete-beim-MDM-Anbieter-Mobile-Guardian/Heise-Forum-als-Command-and-Control-Server-Funktioniert/posting-44292822/show/' | geheis/geheis
```

## Wie?

Es ist trivial einfach:

- Endet eine Zeile mit einem Leerzeichen, ist das eine `0`
- Mit zwei Leerzeichen eine `1`
- Mit mehr dann entsprechend eine `2` usw.

Auf diese Weise kann man beliebige Nachrichten kodieren, sofern genug Zeilen vorhanden sind.

> Wenn Heise die Zeilen "trimmt", funktioniert es natürlich in Zukunft nicht mehr.


## Bugs

- Enthält eine Zeile ein URL (Heise rendert gewisse URLs) dann stehen beim Decoder die Leerzeichen **vor dem URL
  und nicht am Ende der Zeile**.  Das könnte man mit einem "echten" HTML-Parser natürlich korrigieren der Zeilen ausspuckt.
  Damit man vor dem URL immer ein Leerzeichen eingeben muss, wird dieses entfernt.  Man muss also zwei Leerzeichen für '0' eingeben
  usw.  Diesen Bug kann man natürlich auch als Feature ansehen.

- Das Script basiert darauf, wie Heise aktuell die Postings rendert, um es aus dem ganzen anderen HTML herauszuschneiden.
  Sollte sich das ändern geht das Script natürlich nimmer.
  Auch das könnte man mit einem ordentlichen HTML-Parser vermutlich reparieren.


## FAQ

WTF why?

- Mir war danach

Name?

- `Geheim` mit einem `s` statt `m`.  Was besseres ist mir einfach nicht eingefallen.

Lizenz?

- So frei wie Freibier, freie Rede und freies Baby.

Stabilität?

- Der Code wurde nur zu reinen Demonstrationszwecken geschrieben.
- Wenn Heise seinen Code ändert, wird er wahrscheinlich nicht mehr funktionieren.

