.section .data # Daten

liste: .int 8, 5, 2, 4, 6 # array von Zahlen (2 Byte)
length: .int 5 # Laenge der Liste
x: .int 8 # das zu suchende Element


.section .text # Programmcode

.global _start # _start nach aussen sichtbar, Einsprung in das Programm (main)

_start:
	movl $0, %esi # Initialisierung des Zählindezes i
	movl x, %ecx # Effizienz: lade x in ein Register
	#leal liste, %eax
	movl length, %ebx

schleife:
	# das nächste Listenelement liste[i] laden
	movl liste(,%esi,4), %eax


	# überprüfe ob liste[i] == x
	cmpl %ecx, %eax
	# falls ja, springe an Ende mit Ergebnis: gefunden  bei i
	je found

	# falls nein, i hochzählen,
	incl %esi
	# falls Ende der Liste nicht erreicht, wiederhole Schleife
	cmpl %esi, %ebx
	# falls Ende ereicht: Ergebnis: nicht gefunden
	je notfound

	jmp schleife

notfound:
	movl 0xFF, %ebx
	jmp end

found:
	movl %esi, %ebx

end:
	movl $1, %eax # Systemfunktion Nummer 1 = exit-Funktion
	int $128 # SW-Interrupt-> Aufruf der Systemfunktion (hex. 0x80)
