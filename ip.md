# IP

## Network Layer

  * Datenaustausch über heterogene Netze
  * hardware-unabhängige Adresse pro Knoten
  * Verbindung mittels Router oder Gateway
  * vituelles Netz aka Internet

### Adressierungsschema

  * Flacher Adressraum: eindeutig, sagt nichts über Position aus, schlecht für grosse Netze
  * Hierarscher Adressraum: Subnetze, vereinfacht Routing, neue Adresse falls Host das Netz wechselt

### Router

  * Auf Network-Layer, Funktion wie Bridges
  * Empfangen nur an sie adressierte Pakete (vom Datalink-Layer)
  * Weiterleitung Anhang Network Layer Adresse, nicht MAC
  * Können heterogene Netze koppeln (z.B. Ethernet mit XDSL), braucht Protokoll-Stack der Netwerk-Technologie
 
#### Vorteile

  * Immer optimaler Pfad, effektiver in WAN
  * gute Netzbereichtrennung, logisch und verkehrsmässig
  * unbeschränkte Anzahl Knoten
  * Sicherheit und eifachere Verwaltung durch Trennen von Netzbereichen
  * Barriere für Broadcast-Meldungen (gegen Broadcast-Storms)

#### Nachteile

  * Teurer, schwieriger zum konfigurieren
  * Nicht alle Protokolle lassen sich routen

#### Routing

  * Routing: optimaler Weg bestimmen
  * Forwarding: Weiterleitung der Datenpakete
  * Muss Topologie des Netzes kennen
  * 
