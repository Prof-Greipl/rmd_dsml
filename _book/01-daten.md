# Daten



## Der Iris-Datensatz



Der Iris-Datensatz enthält Messungen von jeweils 50 Blüten zu drei verschiedenen Lilien-Arten (setosa, versicolor, virginica)

![Download](assets/daten.assets/Download.png)

Gemessen werden  pro [Blüte ](https://de.wikipedia.org/wiki/Bl%C3%BCte)in cm&#x20;

* die Länge und Breite des Kronblattes (Petalum, petal) sowie&#x20;
* die Länge und Breite des Kelchblattes (Sepalum, sepal)



![image (190)](assets/daten.assets/image_messung-16426070933692.png)

### Datensatz

Folgender - in der Community wohlbekannter - Datensatz liegt uns vor (Sie finden die Daten [hier](https://syncandshare.lrz.de/getlink/fi89kxTJ5yLRaW5mnpyrofVK/Iris_p.xlsx)).

![Iris-Datensatz](assets/daten.assets/image-20211209101425856-16426070878651.png)





## Datentypen

### Elementare Datentypen

#### Zahlen

#### Strings

#### Logische Werte

#### Elementare Datentypen in Python



### Komplexe Datentypen

#### Datum

#### Uhrzeit

#### Bilder

#### Komplexe Datentypen in Python



## Skalenniveaus

### Überblick

| Scale    | Operations    | Description                                                  | Statistics         | Example                                     |
| -------- | ------------- | ------------------------------------------------------------ | ------------------ | ------------------------------------------- |
| Nominal  | $$=, \neq$$   | values have no natural order; they describe unordered categories | Mode (Modus)       | München, Hamburg, Essen                     |
| Ordinal  | $$<, >$$      | values have a defined order; difference of values is undefined or has no clear or meaningful  definition | Median             | Schulnoten, Tabellenplatz in der Bundesliga |
| Interval | $$+,-$$       | differences of values have the same meaning; adding provides useful results; zero point is not naturally/globally defined | Mean               | Temperatur                                  |
| Ratio    | $$\cdot , /$$ | zero point is naturally defined                              | (Generalized) Mean | Alter                                       |

Bemerkungen:

1. Skalenniveaus sind nicht immer klar zuzuordnen.

3. Aus nominalen Datenskalen lassen sich stets  *künstliche Ordnungen* (und damit ordinale Datenskalen) definieren.

4. Bilden sie keine Mittelwerte auf Daten mit ordinalen Datenskalen!

4. Nominale und ordinale Datenskalen heißen auch *kategorisch*  oder *qualitativ*.

5. Intervall und Ratio-Datenskalen heißen auch _metrisch_.


Ergänzend: [Die fünf Skalenniveaus: Einfach und verständlich erklärt (statistikpsychologie.de)](https://www.statistikpsychologie.de/skalenniveaus/) 

   

### Skalenniveaus im Iris-Datensatz



![Skalenniveaus bei Iris](assets/daten.assets/image-20211209145313372.png)



##### Von Nominal zu Ordinal

Wir werden später folgende eindeutige Zuordnung  treffen:

| Nominaler Wert | Ordinaler Wert |
| :------------: | :------------: |
|     setosa     |       0        |
|   versicolor   |       1        |
|   virginica    |       2        |
