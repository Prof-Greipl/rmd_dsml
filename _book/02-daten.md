# Daten

## Elementare Datentypen

Daten^[sing. Datum] sind Ergebnisse von Beobachtungen, Messungen oder Berechnungen, die in einer bestimmten Form notiert, also aufgeschrieben sind.  Häufig sprechen wir auch von *Werten*, statt von Daten. Ein Werte kann zum Beispiel die Zahl $27$ oder die Note "*sehr gut*" sein. Offensichtlich gehören beide Werte zu verschiedene Typen von Werten, den sogenannten Datentypen.  Wir beschäftigen uns mit den Datentypen *Zahlen*, *Text* und *Boolean*

##### Zahlen

Werte dieses Datentyps sind z.B. $1$, $-1$, $1.7$  oder $1/3$. Wie sie wissen, lässt sich die Menge der Zahlen noch weiter einteilen in natürliche Zahlen und reelle Zahlen (und noch ein paar mehr, die aber vorest nicht gebraucht werden. Wir verwenden die Symbole $\mathbb{N}$ für die natürlichen Zahlen und  $\mathbb{R}$ für die reellen Zahlen.

Wir notieren Zahlen wie üblich und verwenden in der Dezimalnotation den Punkt als Trennsymbol.

##### Text

Werte dieses Datentyps sind zum Beispiel "Baum", "Hans Huber" oder "sehr gut". Zeichenketten beginnen und enden mit einem Anführungszeichen. In der Regel macht uns diese Notationen keine Probleme - manchmal wird es trotzdem ungemütlich: Kann eine Zeichenkette ein Anführungszeichen enthalten? Gibt es einen Unterschied zwischen der Zahl 123 und der Zeichenkette "123"? Wir  vertiefen das hier nicht, sondern gehen die Fragen an, sobald sie uns begegnen.

##### Logischer Datentyp (Boolean)

Dieser Datentyp umfasst nur zwei Werte, die sogenannten Wahrheitswerte. Wir werden in diesem Text die Notation *True* und *False* verwenden. 

Wir nennen diese Datentypen "elementar", weil uns eine weitere Aufteilung nicht sinnvoll erscheint. Der Begriff "elementar" ist nicht ganz korrekt, weil z.B. die Zahl $123$ ja eine Folge von Ziffern und die Zeichenkette "Baum" eine Folge von Buchstaben ist. Elementar wäre also eher der Datentyp *Ziffer* oder *Buchstabe*, als der Datentyp *Zahl* oder *Text*. Auch über diese begriffliche Ruppigkeit sehen wir zu Beginn hinweg. In der Programmierung werden sie aber eine Rolle spielen.

::: {.rmdnote}

Stellen sie sich jeden Datentyp als Menge vor. Die Elemente der Menge sind die zulässigen Werte des Datentyps. Offensichtlich ist besitzt die Menge der Zahlen oder Texte  unendlich viele Elemente, während der Logische  Datentyp nur zwei Werte kennt.

:::

## Der Iris-Datensatz



Der Iris-Datensatz enthält Messungen von jeweils 50 Blüten zu drei verschiedenen Lilien-Arten (setosa, versicolor, virginica)

![Download](assets/daten.assets/Download.png){width=100%}

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

3. Auf nominalen Datenskalen lassen sich stets  *künstliche Ordnungen* (und damit ordinale Datenskalen) definieren.

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
