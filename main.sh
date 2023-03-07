#!/bin/bash

#! Varible
NAME="Thoriq AS"
UMUR=18

echo "Nama saya $NAME umur $UMUR"

#! Array
NAME[0]="Zara"
NAME[1]="Qadir"
NAME[2]="Mahnaz"
NAME[3]="Ayan"
NAME[4]="Daisy"

echo "First Index: ${NAME[0]}"
echo "Second Index: ${NAME[1]}"

echo "First Method: ${NAME[*]}"

#! Arithmetic Operators
echo $((2 + 3 - (1 * 3)))
echo 2 + 10 | bc
expr 100 - 3

((x = 2, y = 3, a = x + y, b = x * y, c = x ** y))
echo $a, $b, $c

#! Relational Operators
# -eq = equal , -ne = not equal , -gt = greater than , -lt = less than
# -ge = greter equal , -le = less equal

#! Codition
CUSTOMER="Thoriq AS"
BATAS=18

if [ $UMUR -ge $BATAS ]; then
  echo "Boleh Masuk $CUSTOMER"
else
  echo "Gak Boleh masuk umur anda $UMUR"
fi

if [[ $UID -eq 0 ]]; then
  echo "You are root!"
elif [[ $UID -eq 1002 ]]; then
  echo "You are user, welcome!"
else
  echo "You are not welcome here."
  # exit 1
fi

#! Take Input and Another Example Using Relation & Boolean Opeators

# Reading data from the user
# read -p 'Enter number 1 : ' NUMBER1
# read -p 'Enter number 2: ' NUMBER2

# if (($NUMBER1 == $NUMBER2)); then
#   echo a is equal to b.
# else
#   echo a is not equal to b.
# fi

# if (($NUMBER1 <= $NUMBER2)); then
#   echo a is less than or equal to b.
# else
#   echo a is not less than or equal to b.
# fi

# if (($NUMBER1 >= $NUMBER2)); then
#   echo a is greater than or equal to b.
# else
#   echo a is not greater than or equal to b.
# fi

# if (($NUMBER1 == "true" & $NUMBER2 == "true")); then
#   echo Both are true.
# else
#   echo Both are not true.
# fi

# if (($NUMBER1 == "true" || $NUMBER2 == "true")); then
#   echo Atleast one of them is true.
# else
#   echo None of them is true.
# fi

# if ((!$NUMBER1 == "true")); then
#   echo "a" was initially false.
# else
#   echo "a" was initially true.
# fi

#! Loop
for i in 0 1 2 3 4 5; do
  echo "Element $i"
done

for i in {0..10}; do
  echo "Element $i"
done

# For loop C-style
for ((i = 0; i <= 5; i++)); do
  echo "Element $i"
done

NUMBER=0

while [ $NUMBER -lt 1 ]; do
  echo $NUMBER
  if [ $NUMBER -eq -5 ]; then
    break
  fi
  # a=$(($NUMBER + 1))
  NUMBER=$(expr $NUMBER - 1)
done

for i in "${NAME[@]}"; do
  echo "Element $i"
done
