FAQ
===

- Mein Modell liefert in veschiedene Entwicklungsumgebungen (z.B. SimX oder OpenModelica) verschiedene Ergebnisse:
    - nachprüfen, ob die Sektion "equation" im Modell mehrfahc vorkommt (sollte nur 1x vorkommen).
    - nachprüfen, ob verschiedene Verbindungen doppelt gelegt wurden
    - nachprüfen, ob Verbindungen in verschiedenen Entwicklungsumgebungen entfernt werden.
    
- In meiner Simulation treten Singularitäten auf
    - Es könnte sein, daß die Simulationsschrittweite zu groß eingestellt ist.


clean modelica files from annotations:  annotation\(([^;]|[^\)].|\n)*[\);]+

clean modeliac files for openmodelica:
  
viewinfo.*\n+.*\n+.*(typename=".+")[\),]+

Installation
============

Virtual Satellite: A Satellite simulation Software

How to create a new satellite simulation
