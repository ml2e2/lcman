sigfiles=(*.sig)

nsigfiles=${#sigfiles[@]}

let nverified=0

printf "Found %d signatures\n" ${nsigfiles}

printf "Verifying...\n"

for i in ${sigfiles[@]}
do
    gpg --quiet --verify ${i} 2>/dev/null
    if [[ $? -eq 0 ]]
    then
	let nverified++
    fi
done

if [[ ${nverified} -eq  ${nsigfiles} ]]
then
    printf "All Signatures are \e[32mGOOD\e[0m.\n"
    exit 0
else
    printf "\e[33mBAD\e[0m signatures found(%d/%d).\n" ${nverified} ${nsigfiles}
    exit 1
fi

