# Same as "for i in {1..10}; do echo $i; done",
# but in a shell script, nicely formatted for readability.

for i in {1..10}; do
  echo $i;

  # You can add any bash command inside here,
  # and they will be executed in order, on every loop iteration.

done
