# NUMBERS
#
# https://ruby-doc.org/core-3.0.1/Integer.html
# https://ruby-doc.org/core-3.0.1/Float.html
# https://ruby-doc.org/core-3.0.1/Numeric.html

integer = 10
float = 5.68494

integer ** 2 # 100 - na druhu
integer % 3 # 1 - /number -> zvysok

float.round(2) # 5.68 - na dve desatinne
float.round(0) # 6 - na ziadne desatinne
float.floor # 5 - smerom dole
float.ceil # 6 - smerom hore

float.to_i # 5 - spravi integer z floatu
integer.to_f # 10.0 - spravi float z integeru
100.to_s # '100' - spravi string z cisla

integer.odd? # false - NEPARNE - ci je dane cislo parne (otaznik vrati bulin)
integer.even? # true - PARNE - ci je dane cislo parne

-100.abs # 100 - absolutna hodnota (+)
-100.negative? # true - ci je nagativne alebo pozitivne
-100.positive? # false - ci je nagativne alebo pozitivne

integer.is_a?(Integer) # true - ci je daneho datoveho typu integer = integer (true)
float.is_a?(Float) # true - ci je daneho datoveho typu float = float (true)
integer.is_a?(Numeric) && float.is_a?(Numeric) # true - ci je integer a float typu numeric
