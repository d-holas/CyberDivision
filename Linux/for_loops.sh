#!/bin/bash

states=('California' 'Utah' 'Hawaii' 'Colorado' 'Oregon')

for state in ${states[@]};
do
	if [ $state = 'Hawaii' ]
then
	echo "Hawaii is the best!"
else
	echo "I'm not fond of Hawaii"
fi
done
