#!/bin/bash

echo "   Bienvenue sur ma Calculatrice bash "

q=1
while [ $q -eq 1 ]
do
echo "Entrer :"
echo " A pour addition"
echo " S pour soustraction"
echo " P pour produit"
echo " D pour division"


   echo "Quel opération voulez Vous effectuer ?"
   read choix
     while [ "$choix" != "P" -a "$choix" != "S" -a "$choix" != "D" -a "$choix" != "A" ];
     do
      echo "Quel opération voulez vous effectuer ?"
      read choix
     done

   echo "Entrer deux nombres"
   read  X; read B;

        case $choix in

          A) echo "vous avez choisis l'addition" ;
             echo "le résultat est: $(($X+$B))";;
          S) echo "vous avez choisis la soustraction"
              echo "le résultat est: $(($X-$B))";;
          P) echo "vous avez choisis le produit"
              echo "le résultat est: $(($X*$B))";;
          D) echo "Vous avez choisis la Division"
              while [ "$B" -eq 0 ];
               do
                echo "Entrer deux nombres"
                read X
                read B
               done
              echo "le résultat est : $(($X/$B))";;
esac

echo "Voulez vous utiliser à nouveau la calculatrice ?"
echo "Entrer 1 pour  Oui ou 0  pour Non"
read  q
done

echo  " see you soon "
