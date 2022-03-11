# Daten

Daten^[sing. Datum] sind Ergebnisse von Beobachtungen, Messungen oder Berechnungen, die in einer bestimmten Form notiert, also aufgeschrieben sind.  Häufig sprechen sprechen wir auch von *Werten*, statt von Daten. Wir können zum Beispiel Lilienblüten untersuchen und pro [Blüte ](https://de.wikipedia.org/wiki/Bl%C3%BCte)in cm&#x20; messen:

* die Länge und Breite des Kronblattes (Petalum, petal) sowie
* die Länge und Breite des Kelchblattes (Sepalum, sepal)

![Lilienblüte^[Quelle: https://medium.com/greyatom/using-clustering-for-feature-engineering-on-the-iris-dataset-f438366d0b4b] ](assets/02-daten.assets/image_messung-16426070933692.png)

## **Variablen**

Eine Beobachtung oder Messung eines einzelnen Wertes formulieren wir  in obigem Beispiel in der Form "*Sepal Länge: 5,1cm*".  Der Begriff Länge wird bei verschiedenen Messungen verschiedene Werte annehmen.   Zum Umgang mit diesen Werte, verwenden wie Variablen. Variablen sind Platzhalter oder Speicher für Werte, wir sprechen also vom _Wert einer Variable_.  Im nachfolgendem Beispiel wird der Variable mit dem Namen `sepal_laenge` der Wert $5.1$ zugewiesen. Variablen haben immer einen Namen. Einen Wert erhalten sie erst  durch eine sog. Zuweisung (wie in Zeile 1). In Zeile 2 drucken wir den Wert aus. Führen Sie also folgende Phython-Befehle aus:


```python
sepal_laenge = 5.1
print(sepal_laenge)
```
Ausgabe:


```
#> 5.1
```
> Die erstmalige Zuweisung eines Wertes an eine Variable heißt Initialisierung.

Wichtig:

- Leerzeichen in Variablennamen sind nicht erlaubt! (Deshalb wurde der *Underscore* verwendet.)
- Vermeiden sie Umlaute in Variablen

## Datentypen 

Ein Wert einer Messung kann neben einer Zahl $5.1$ auch ein Begriff (z.B. die Note "*sehr gut*").  Offensichtlich gehören beide Werte zu verschiedene Typen von Werten, den sogenannten Datentypen.  Wir beschäftigen uns mit den Datentypen 

- *Zahlen*, 
- *Strings* (Text, Worte) und
- *Boolean* (logische Werte).

### **Zahlen**

Werte dieses Datentyps sind z.B. $1$, $-1$, $1.7$  oder $1/3$. Wie sie wissen, lässt sich die Menge der Zahlen noch weiter einteilen in natürliche Zahlen und reelle Zahlen (und noch ein paar mehr, die aber vorerst nicht gebraucht werden. Wir verwenden die üblichen Symbole $\mathbb{N}$ für die natürlichen Zahlen und $\mathbb{R}$ für die reellen Zahlen.

Wir notieren Zahlen wie üblich und verwenden in der Dezimalnotation den Punkt als Trennsymbol.

Nachfolgendes Beispiel zeigt anhand einfacher Programmzeilen die Darstellung von Zahlen und zugleich schon die Verwendung der üblichen Operatoren für Addition und Multiplikation.


```python
x = 1
print(x)
x = 1+1.1
print(x)
x = 1/2+3/4
print(x)
x = 1.2*2
print(x)
```

Die Ausgabe dieses Programms ist:

```
#> 1
#> 2.1
#> 1.25
#> 2.4
```
Mit der Funktion `type` kann lässt sich der Datentyp eines Wertes ausgeben. Es wird an einigen Stellen hilfreich sein, den Datentyp eines Wertes anzuzeigen. 


```python
x = 1; 
print(type(x))
x = 1.2; 
print(type(x))
x = 4/3; 
print(type(x))
```

Die Ausgabe dieses Programms ist:

```
#> <class 'int'>
#> <class 'float'>
#> <class 'float'>
```
Die erste Ausgabezeile bedeutet, dass `int` der Datentyp  des Wertes  $1$ ist. Analog ist `float` der Datentyp des Wertes $1.2$. Beachten Sie, dass der Ausdruck $4/2$ den Datentyp `float` besitzt, obwohl auch `int` plausibel wäre.   

#### **Operationen** {-}
Zahlen lassen sich verknüpfen mit den üblichen Symbolen verknüpfen.


```python
x = 9; 
y = -4

e = x+y
print(e)
e = x-y
print(e)
e = x*y
print(e)
e = x/y
print(e)
```

Die Ausgabe dieses Programms ist:

```
#> 5
#> 13
#> -36
#> -2.25
```
Wir werden mit diesen Operationen zurechtkommen. Mehr finden Sie unter https://www.w3schools.com/python/python_operators.asp



### **Strings**
Strings sind Zeichenkette. Werte dieses Datentyps sind zum Beispiel "Baum", "Hans Huber" oder "sehr gut". Zeichenketten beginnen und enden mit einem Anführungszeichen. In der Regel macht uns diese Notationen keine Probleme - manchmal wird es trotzdem ungemütlich: Kann eine Zeichenkette ein Anführungszeichen enthalten? Gibt es einen Unterschied zwischen der Zahl 123 und der Zeichenkette "123"? Wir  vertiefen das hier nicht, sondern gehen auf die Fragen an, sobald sie uns begegnen.

Wir können einer Variable einen String zuweisen, wenn wir den Wert in Hochkommata setzen:


```python
s = "Aus"
print( type(s) )
```
Ausgabe:

```
#> <class 'str'>
```
Die einzige benötigte Operation ist die sogenannte Konkatenation, also das "Aneinanderhängen" von Strings. Dazu wird der $+$ Operator verwendet:


```python
s = "Aus"
t = "gabe"
print( s+t )
```
Ausgabe:

```
#> Ausgabe
```

Frage: Was erwarten sie für die Berechnung $s-t$  oder $s*t$ ?

Mehr lesen: https://www.w3schools.com/python/gloss_python_string_concatenation.asp


### **Boolean**

Der Datentyp Boolean (logischer Datentyp) umfasst nur zwei Werte, die sogenannten Wahrheitswerte. Wir werden in diesem Text die Notation *True* und *False* verwenden. 


```python
b = True;
print(b)
print( type(b) )
```
Ausgabe:

```
#> True
#> <class 'bool'>
```

### Zusammenfassung

Wir nennen diese Datentypen "elementar", weil wir andere Datentypen, z.B. das Kalenderdatum ("03.07.2022") oder mathematische Vektoren aus diesen Datentypen zusammenstellen können. Der Begriff "elementar" ist nicht ganz korrekt, weil z.B. die Zahl $123$ ja eine Folge von Ziffern und die Zeichenkette "Baum" eine Folge von Buchstaben ist. Elementar wäre also eher der Datentyp *Ziffer* oder *Buchstabe*, als der Datentyp *Zahl* oder *String*. Auch über diese begriffliche Ruppigkeit sehen wir zu Beginn hinweg. 

::: {.rmdnote}

Stellen sie sich jeden Datentyp als Menge vor. Die Elemente der Menge sind die zulässigen Werte des Datentyps. Offensichtlich ist besitzt die Menge der Zahlen oder Texte  unendlich viele Elemente, während der Logische  Datentyp nur zwei Werte kennt.

:::

### **Übungen** 

1. Geben sie die Ergebnisse der Rechnungen $3-1.1$ und $12 / 5$ aus.

2.  Erklären Sie die Ausgabe für folgenden Programmzeile
    
    ```python
    print(1e2+1e-1)
    ```
    Ausgabe:
    
    ```
    #> 100.1
    ```






## Skalenniveaus

| Scale    | Operations    | Description                                                  | Statistics                     | Example                                     |
| -------- | ------------- | ------------------------------------------------------------ | ------------------------------ | ------------------------------------------- |
| Nominal  | $$=, \neq$$   | Werte haben keine natürliche Ordnung; sie beschreiben Kategorien oder Klassen | Modus (Mode)                   | München, Hamburg, Essen                     |
| Ordinal  | $$<, >$$      | Werte haben eine definierte Ordnung; arithmetische Operation (z.B. Summe, Differenz, Multiplikation, Division) sind nicht definiert Definition. | Median                         | Schulnoten, Tabellenplatz in der Bundesliga |
| Interval | $$+,-$$       | Differenzen von Werten haben identische Bedeutung, die Addition ist sinnvoll definierbar. Es gibt keinen global oder eindeutig definierten Nullpunkt | Mittelwert                     | Temperatur                                  |
| Ratio    | $$\cdot , /$$ | Der Nullpunkt ist eindeutig definiert.                       | (Verallgemeinerter) Mittelwert | Alter                                       |

Bemerkungen:

1. Skalenniveaus sind nicht immer klar zuzuordnen.

3. Auf nominalen Datenskalen lassen sich stets  *künstliche Ordnungen* (und damit ordinale Datenskalen) definieren.

4. Bilden sie keine Mittelwerte auf Daten mit ordinalen Datenskalen!

4. Nominale und ordinale Datenskalen heißen auch *kategorisch*  oder *qualitativ*.

5. Intervall und Ratio-Datenskalen heißen auch _metrisch_.


Ergänzend: [Die fünf Skalenniveaus: Einfach und verständlich erklärt (statistikpsychologie.de)](https://www.statistikpsychologie.de/skalenniveaus/) 

## Iris-Datensatz



Der Iris-Datensatz enthält Messungen von jeweils 50 Blüten zu drei verschiedenen Lilien-Arten (setosa, versicolor, virginica)

![Download](assets/02-daten.assets/Download.png){width=100%}



### Datensatz

Folgender - in der Community wohlbekannter - Datensatz liegt uns vor (Sie finden die Daten [hier](https://syncandshare.lrz.de/getlink/fi89kxTJ5yLRaW5mnpyrofVK/Iris_p.xlsx)).


xx Die ersten 5..







