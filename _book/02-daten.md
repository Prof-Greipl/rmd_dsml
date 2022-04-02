# Daten

Daten^[sing. Datum] sind Ergebnisse von Beobachtungen, Messungen oder Berechnungen, die in einer bestimmten Form notiert, sind.  Häufig sprechen sprechen wir auch von *Werten*, statt von Daten. Wenn wir viele gleichartige Daten erfassen, aufbereiten und Zusammengänge  analysieren, so lassen sich daraus möglicherweise mittels Algorithmen komplexe Aufgabenstellungen lösen.  Wir erläutern diese Idee anhand des Iris-Datensatzes^[siehe z.B. https://en.wikipedia.org/wiki/Iris_flower_data_set] (engl. *Iris flower data set*).

## Iris-Datensatz

Der Iris-Datensatz ist einer der bekanntesten Datensätze für Maschinelles Lernen und entstand 1936. Gegenstand der Messung waren 150 Lilien der Arten *Iris setosa*, *Iris versicolor*, und *Iris virginica*. Gemessen wurden für je eine Blüte jeweils (in cm):

* die Länge und Breite des Kronblattes (Petalum, petal) sowie
* die Länge und Breite des Kelchblattes (Sepalum, sepal)

Pro Messung entstehen also 4 Werte und die Spezies der untersuchten Lilie. 

![Lilienarten](assets/02-daten.assets/Download.png){width=100%}

  



![Messung von Länge und Breite^[Quelle: https://medium.com/greyatom/using-clustering-for-feature-engineering-on-the-iris-dataset-f438366d0b4b] ](assets/02-daten.assets/image_messung-16426070933692.png)



Nachfolgende Tabellen zeigen die Aufzeichnungen der ersten 5 Messungen gefolgt und der letzten 5 Messungen. Der Datensatz enthält jeweils 50 Lilien jeder Sorte. Die Spezies wird in der letzten Spalte unter `class` angegeben

Die ersten 5 Datensätze (#0 - #4):




```
#>    sepal_len  sepal_wid  petal_len  petal_wid   class
#> 0        5.1        3.5        1.4        0.2  setosa
#> 1        4.9        3.0        1.4        0.2  setosa
#> 2        4.7        3.2        1.3        0.2  setosa
#> 3        4.6        3.1        1.5        0.2  setosa
#> 4        5.0        3.6        1.4        0.2  setosa
```

Die letzten 5 Datensätze (#145 - #149):


```
#>      sepal_len  sepal_wid  petal_len  petal_wid      class
#> 145        6.7        3.0        5.2        2.3  virginica
#> 146        6.3        2.5        5.0        1.9  virginica
#> 147        6.5        3.0        5.2        2.0  virginica
#> 148        6.2        3.4        5.4        2.3  virginica
#> 149        5.9        3.0        5.1        1.8  virginica
```

Wir greifen zwar etwas vor, aber an diesem Beispiel lässt sich eine typische Aufgabenstellung von Machine Learning recht einfach erklären: Ein Bobachter erhebt für die Blüte einer Lilie die Messwerte `sepal_len, sepal_wid, petal_len, petal_wid` und will daraus die Art dieser Lilie bestimmen.

Nehmen wir nun an, dass der Beobachter die Werte $(5.1, 3.5, 1.4, 0.2)$ misst. Wir erkennen, dass genau diese Werte als Datenzeile $0$ in unserem Datensatz vorliegen und bereits von einer *Setosa* erhoben wurden (Spalte `class`). Wir werden natürlich *Setosa* als  Art dieser Blüte angeben. Dieser Fall wir wohl eher selten auftreten.  Schwieriger ist die Antwort zum Beispiel für die Messwerte  $(6.1, 3.2, 5.3, 2.1)$, die nicht als Zeile in unserem Datensatz auftreten. Mit etwas Recherche finden wir heraus, dass Datensatz 148 für die recht ähnlichen Werte $(6.2, 3.4, 5.4, 2.3)$ für eine Virginica enthält.  Wir könnten also mit der Art "Virginica" antworten.^[Dabei ist noch zu konkretisieren, wie wir die Ähnlichkeit der Werte messen]

Um Datensätze für *Machine Learning* zu verwenden, müssen wir wir sie vorher auf Tauglichkeit untersuchen, eventuell korrigieren, filtern und so weiter.  

  




## **Variablen**

Eine Beobachtung oder Messung eines einzelnen Wertes formulieren wir  in obigem Beispiel in der Form "*Sepal-Länge: 5,1cm*".  Die Beobachtung *Sepal-Länge* wird bei verschiedenen Blüten verschiedene Werte annehmen.   Zum Umgang mit diesen Werten verwenden wie Variablen. Variablen sind Platzhalter oder Speicher für Werte, wir sprechen also vom _Wert einer Variable_.  Im nachfolgendem Beispiel wird der Variable mit dem Namen `sepal_laenge` der Wert $5.1$ zugewiesen. Variablen haben immer einen Namen. Einen Wert erhalten sie erst  durch eine sog. Zuweisung (wie in Zeile 1). In Zeile 2 drucken wir den Wert aus. Führen Sie also folgende Phython-Befehle aus:


```python
sepal_len = 5.1
print(sepal_len)
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

Ein Wert einer Messung kann neben einer Zahl $5.1$ auch ein Text (zum Beispiel "*sehr gut*") sein.  Offensichtlich gehören beide Werte zu verschiedene Typen von Werten, den sogenannten Datentypen.  Zudem brauchen wir logischen Datentypen, um zu bewerten, ob Sachverhalte *wahr* (`True`) oder *falsch* (`False`) sind. Wir beschäftigen uns also mit den Datentypen 

- *Zahlen* 
- *Strings* (Text, Worte) und
- *Boolean* (logische Werte).

Werte mit diesen Datentypen lassen sich zu Listen und Tupel zusammenfassen. Wir behandeln sie am Ende des Abschnittes.

### **Zahlen**

Werte dieses Datentyps sind z.B. $1$, $-1$, $1.7$  oder $1/3$. Wie sie wissen, lässt sich die Menge der Zahlen noch weiter einteilen in natürliche Zahlen und reelle Zahlen ^[Es gibt natürlich noch ein paar mehr Arten von Zahlen, die wir aber hier nicht brauchen]. Zur Notation diese Zahlenmengen verwenden wir die üblichen Symbole $\mathbb{N}$ für die natürlichen Zahlen und $\mathbb{R}$ für die reellen Zahlen.

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
b = False;
print(b)
print( type(b) )
```
Ausgabe:

```
#> True
#> <class 'bool'>
#> False
#> <class 'bool'>
```

### Listen und Tupel

Listen und Tupel sind eine geordnete Zusammenstellung von Werten. 

#### **Listen** {-}{#listen}

Folgendes Beispiel illustriert den Datentype `list`


```python
l = ["apple", "banana", "cherry"]
print( l )
print( type(l))
```
Ausgabe:

```
#> ['apple', 'banana', 'cherry']
#> <class 'list'>
```

Auf Element einer Liste wird durch Angabe der gewünschten Position zugegriffen


```python
l = ["apple", "banana", "cherry"]
print( l[0] )
print( l[2] )
```
Ausgabe:

```
#> apple
#> cherry
```

Damit lassen sich auch Einträge der Liste ändern:


```python
l = ["apple", "banana", "cherry"]
l[1] = "orange"
print( l )
```

Ausgabe:


```
#> ['apple', 'orange', 'cherry']
```



Die Länge einer Liste lässt sich über die eingebaute Funktion  `len` abfragen:


```python
l = ["apple", "banana", "cherry"]
print( len(l) )
```
Ausgabe:

```
#> 3
```

#### **Tupel** {-}

Tupel sind sehr ähnlich zu  Listen, die **Einträge sind jedoch nicht änderbar**. Zur Unterscheidung gegenüber Listen werden runde Klammern verwendet:


```python
t = ("Erde",-1,"Mond")
print(t)
print( t[2] )
print( len(t) )
print( type(t) )
```
Ausgabe:

```
#> ('Erde', -1, 'Mond')
#> Mond
#> 3
#> <class 'tuple'>
```

Beachten sie, dass der Versuch einer Änderung durch `t[0] = 1` zu einem Fehler führt (Test als Übung!). 

### Zusammenfassung

Die Datentypen `int`, `float`, `bool`, `list` und `tupel` sind in Python eingebaut. Wir werden später weitere,  kompliziertere Datentypen kennenlernen, die über Erweiterung von Python verfügbar sind. Eine komplette Aufzählung aller Datentypen finden sie unter https://www.w3schools.com/python/python_datatypes.asp. Wie sie sehen, haben wir nicht alle Varianten behandelt.

::: {.rmdnote}

Stellen sie sich jeden Datentyp als Menge vor. Die Elemente der Menge sind die zulässigen Werte des Datentyps. Offensichtlich ist besitzt die Menge der Zahlen oder Texte  unendlich viele Elemente, während der Logische  Datentyp nur zwei Werte kennt.

:::



### Übungen 

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

| Niveau    | Operationen   | Beschreibung                                                 | Statistik/Operation                                          | Beispiel                                    |
| --------- | ------------- | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------- |
| Nominal   | $$=, \neq$$   | Werte haben keine natürliche Ordnung; sie beschreiben Kategorien oder Klassen | Modus (Mode)                                                 | München, Hamburg, Essen                     |
| Ordinal   | $$<, >$$      | Werte haben eine definierte Ordnung; arithmetische Operation (z.B. Summe, Differenz, Multiplikation, Division) sind nicht definiert Definition. | Median                                                       | Schulnoten, Tabellenplatz in der Bundesliga |
| Intervall | $$+,-$$       | Gleiche Differenzen von Werten haben auch gleiche Bedeutung, die Addition ist sinnvoll definierbar. Es gibt keinen global oder eindeutig definierten Nullpunkt | Mittelwert                                                   | Temperatur                                  |
| Ratio     | $$\cdot , /$$ | Der Nullpunkt ist eindeutig definiert.                       | (Verallgemeinerter) Mittelwert^[ $(\frac{1}{n} \sum x_i^p)^\frac{1}{p}$] | Alter                                       |

Bemerkungen:

1. Skalenniveaus sind nicht immer klar zuzuordnen.

3. Auf nominalen Datenskalen lassen sich stets  *künstliche Ordnungen* (und damit ordinale Datenskalen) definieren.

4. Bilden sie keine Mittelwerte auf Daten mit ordinalen Datenskalen!

4. Nominale und ordinale Datenskalen heißen auch *kategorisch*  oder *qualitativ*.

5. Intervall und Ratio-Datenskalen heißen auch _metrisch_.


Ergänzend: [Die fünf Skalenniveaus: Einfach und verständlich erklärt (statistikpsychologie.de)](https://www.statistikpsychologie.de/skalenniveaus/) 



#### Beispiel: Von Nominal zu Ordinal {-}

Wir werden später folgende eindeutige Zuordnung  treffen:

| Nominaler Wert | Ordinaler Wert |
| :------------: | :------------: |
|     setosa     |       0        |
|   versicolor   |       1        |
|   virginica    |       2        |

Diese einfache Zuordnung weist auf einen wichtigen Arbeitsschritt hin: dem Auf- und Vorbereiten der Daten für die weitere Bearbeitung.

### Übungen

1. Welches Skalenniveau haben die einzelnen Spalten im Iris-Datensatz?
2. Diskutieren sie die Zulässigkeit einer Durchschnittsnote für Prüfungsnoten.
