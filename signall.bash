txtfiles=(*.txt)
pdffiles=(*.pdf)
htmlfiles=(*.html)

for ele in ${txtfiles[@]}
do
    gpg --quiet --default-key lcman --detach-sign ${ele}
    if [[ $? -eq 0 ]]
    then
	printf "[INFO] %s is signed.\n" ${ele}
    else
	printf "[INFO] %s is NOT signed.\n" ${ele}
    fi
done


for ele in ${pdffiles[@]}
do
    gpg --quiet --default-key lcman --detach-sign ${ele}
    if [[ $? -eq 0 ]]
    then
	printf "[INFO] %s is signed.\n" ${ele}
    else
	printf "[INFO] %s is NOT signed.\n" ${ele}
    fi
done

for ele in ${htmlfiles[@]}
do
    gpg --quiet --default-key lcman --detach-sign ${ele}
    if [[ $? -eq 0 ]]
    then
	printf "[INFO] %s is signed.\n" ${ele}
    else
	printf "[INFO] %s is NOT signed.\n" ${ele}
    fi
done
