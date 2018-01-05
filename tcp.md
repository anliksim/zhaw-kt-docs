# Transport Layer

 * Schnittstelle zwischen Betriebssystem und Applikationen

## Kapselung

  * Transport Protocol Packet mit Transport-Header dann IP-Header
    * User Datagramm bei UDP
    * Segment bei TCP

### Demultiplexen

  * Verteilen der Daten auf Applikationen
    * Basiert auf Dest Port des Transport-Headers
    * Logiescher I/O-Kanal 
  

## UDP

  * Verbindungslos, unzuverlässig
  * Dient dem De/Multiplexen der Datagramme

### Header

  * UDP Src/Dest Port (16B): Für De/Multiplexing
  * UDP Message Lenght: Packet Länge in Byte. Header + Daten, min. 8
  * Checksum: Prüfsumme über Pseudo-, UDP-Header + Daten oder null


## Ports

  * Ports 0-1023: System / Well Known Ports, neue Zuordnung durch IANA/IETF
    * 0:reserved,7:echo,9:discard,13:daytime,22:ssh,37:time,53:domain,69:tftp,80:www-http,110:pop3,123:ntp,161:snmp,177:xdmcp,220:imap3,513:who,525:timed
  * Ports 1024-49151: User Ports, neue Nummern auf Antrag
  * Ports 49152-65535: Dynamic Ports zur freien Verfügung


## TCP    

  * Zuverlässig: garantiert ohne Datenverlust und richtige Reihenfolge
     * Acknowledgment: Antwort auf fehlerfreies Segment
     * Retransmission: Neu senden nach Ablauf des Timers oder bie Fehlern
     * Retransmission Time-Out: Wartezeit bis zur Neuübertragung
     * Round-Trip Time/Delay: Umlaufverzögerung
     * Adaptive Wartezeit: RTO wird zur Laufzeit angepasst
  * Verbindungsorientiert: aktive Verbindung, virtuelle P2P Verbindung zwischen Software
  * Vollduplex: Gleichzeitig senden und empfangen
  * Stream-Schnittstelle: sendet/empfängt fortlaufende, unstrukturierte Bytefolge
  * Zuverlässiger Verbindungsaufbau: 3-Way-Handshake
  * Eleganter Verbindungsabbau: Zustellung der Daten vor Abbau

TODO: TCP RTO/RTT Formeln in Katex

### Flow Control

  * Datenüberlauf bei unterschiedlich schnellen Hosts
  * Flow Control zum Verhindern von Datenverlust
  * Stop-and-Wait-Verfahren: Wartet auf eine Quittung für jedes Packet
  * Sliding Window:    



