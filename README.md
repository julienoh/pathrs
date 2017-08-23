# pathrs

pathrs.sh is the script that test if the path from one area to an other area take the same path in the small MAN. We test all the path frome the "site" file

Usage :
-------
cat site | xargs -n 1 -P 16 -I % ./pathrs.sh %

Exemple :
---------
```
joh@lestest% cat pdb | xargs -n 1 -P 16 -I % ./pathrs.sh %
--> 10.2.20.20 --> 10.2.68.41 --> 10.2.90.20  [10.2.90.20_PdB_VOIX]
--> 10.2.20.20 --> 10.2.68.41 --> 10.2.68.46 --> 10.2.0.20  [10.2.0.20_PdB]
--> 10.2.20.20 --> 10.2.68.41 --> 10.2.68.46 --> 10.2.2.20  [10.2.2.20_PdB]
--> 10.2.20.20 --> 10.2.68.41 --> 10.2.68.46 --> 10.2.5.20  [10.2.5.20_PdB]
--> 10.2.20.20 --> 10.2.68.41 --> 10.2.68.46 --> 10.2.7.20  [10.2.7.20_PdB]
```
