
OUT_PREFIX="gnu"

function fetch_gnu1
{
    # GNU manuals that support txt/pdf/html
    
    PROG=$1
    VER=$2
    OUTPROG="${OUT_PREFIX}-${PROG}-${VER}"
    
    printf "Removing old & Fetching '${OUTPROG}'...\n"
    rm -f "${OUTPROG}.html"
    rm -f "${OUTPROG}.txt"
    rm -f "${OUTPROG}.pdf"
    
    wget \
	"https://www.gnu.org/software/${PROG}/manual/${PROG}.html" \
	--output-document "${OUTPROG}.html" \
	--quiet
    ret_html=$?
    
    wget \
	"https://www.gnu.org/software/${PROG}/manual/${PROG}.txt" \
	--output-document "${OUTPROG}.txt" \
	--quiet
    ret_txt=$?
    
    wget \
	"https://www.gnu.org/software/${PROG}/manual/${PROG}.pdf" \
	--output-document "${OUTPROG}.pdf" \
	--quiet
    ret_pdf=$?
    
    if [[ ${ret_html} -eq 0 ]] && [[ ${ret_txt} -eq 0 ]] && [[ ${ret_pdf} -eq 0 ]]
    then
	printf "Fetch '${OUTPROG}': \e[32mGOOD\e[0m\n"
    else
	printf "Fetch '${OUTPROG}': \e[33mBAD\e[0m\n"
    fi
}

function fetch_gnu2
{
    # GNU manuals for binutils
    
    PROG=$1
    VER=$2
    OUTPROG="${OUT_PREFIX}-${PROG}-${VER}"
    
    printf "Removing old & Fetching '${OUTPROG}'...\n"
    rm -f "${OUTPROG}.html"
    rm -f "${OUTPROG}.pdf"
    
    wget \
	"https://sourceware.org/binutils/docs/${PROG}.html" \
	--output-document "${OUTPROG}.html" \
	--quiet
    ret_html=$?
    
    wget \
	"https://sourceware.org/binutils/docs/${PROG}.pdf" \
	--output-document "${OUTPROG}.pdf" \
	--quiet
    ret_pdf=$?
    
    if [[ ${ret_html} -eq 0 ]] && [[ ${ret_pdf} -eq 0 ]]
    then
	printf "Fetching'${OUTPROG}': \e[32mGOOD\e[0m\n"
    else
	printf "Fetching'${OUTPROG}': \e[33mBAD\e[0m\n"
    fi
}

function fetch_gnu3
{
    # GNU manuals for "findutils"
    
    PROG="find"
    VER=$2
    OUTPROG="${OUT_PREFIX}-${PROG}-${VER}"
    
    printf "Removing old & Fetching '${OUTPROG}'...\n"
    rm -f "${OUTPROG}.html"
    rm -f "${OUTPROG}.pdf"
    
    wget \
	"https://www.gnu.org/software/findutils/manual/html_mono/${PROG}.html" \
	--output-document "${OUTPROG}.html" \
	--quiet
    ret_html=$?
    
    wget \
	"https://www.gnu.org/software/findutils/manual/${PROG}.pdf" \
	--output-document "${OUTPROG}.pdf" \
	--quiet
    ret_pdf=$?
    
    if [[ ${ret_html} -eq 0 ]] && [[ ${ret_pdf} -eq 0 ]]
    then
	printf "Fetching'${OUTPROG}': \e[32mGOOD\e[0m\n"
    else
	printf "Fetching'${OUTPROG}': \e[33mBAD\e[0m\n"
    fi
}

function fetch_gnu4
{
    # only GPG
    PROG=$1
    VER=$2
    OUTPROG="${OUT_PREFIX}-${PROG}-${VER}"
    
    printf "Removing old & Fetching '${OUTPROG}'...\n"
    rm -f "${OUTPROG}.pdf"
 
    
    wget \
	"https://gnupg.org/documentation/manuals/${PROG}.pdf" \
	--output-document "${OUTPROG}.pdf" \
	--quiet
    ret_pdf=$?
    
 

    if [[ ${ret_pdf} -eq 0 ]] 
    then
	printf "Fetching'${OUTPROG}': \e[32mGOOD\e[0m\n"
    else
	printf "Fetching'${OUTPROG}': \e[33mBAD\e[0m\n"
    fi
}


function fetch_gnu5
{
    # GNU manuals for libc/emacs
    
    PROG=$1
    VER=$2
    OUTPROG="${OUT_PREFIX}-${PROG}-${VER}"
    
    printf "Removing old & Fetching '${OUTPROG}'...\n"
    rm -f "${OUTPROG}.html"
    rm -f "${OUTPROG}.pdf"
    
    wget \
	"https://www.gnu.org/software/${PROG}/manual/html_mono/${PROG}.html" \
	--output-document "${OUTPROG}.html" \
	--quiet
    ret_html=$?
    
    wget \
	"https://www.gnu.org/software/${PROG}/manual/pdf/${PROG}.pdf"\
	--output-document "${OUTPROG}.pdf" \
	--quiet
    ret_pdf=$?
    
    if [[ ${ret_html} -eq 0 ]] && [[ ${ret_pdf} -eq 0 ]]
    then
	printf "Fetching'${OUTPROG}': \e[32mGOOD\e[0m\n"
    else
	printf "Fetching'${OUTPROG}': \e[33mBAD\e[0m\n"
    fi
}


function fetch_gnu6
{
    # GNU manuals for GDB
    
    PROG=$1
    VER=$2
    OUTPROG="${OUT_PREFIX}-${PROG}-${VER}"
    
    printf "Removing old & Fetching '${OUTPROG}'...\n"
    rm -f "${OUTPROG}.html"
    rm -f "${OUTPROG}.pdf"

    
    wget \
	"https://sourceware.org/gdb/current/onlinedocs/${PROG}.html" \
	--output-document "${OUTPROG}.html" \
	--quiet
    ret_html=$?
    
    wget \
	"https://sourceware.org/gdb/current/onlinedocs/${PROG}.pdf" \
	--output-document "${OUTPROG}.pdf" \
	--quiet
    ret_pdf=$?
    
    if [[ ${ret_html} -eq 0 ]] && [[ ${ret_pdf} -eq 0 ]]
    then
	printf "Fetching'${OUTPROG}': \e[32mGOOD\e[0m\n"
    else
	printf "Fetching'${OUTPROG}': \e[33mBAD\e[0m\n"
    fi
}

function fetch_gnu7
{
    # GNU manuals for GCC
    
    PROG=$1
    VER=$2
        OUTPROG="${OUT_PREFIX}-${PROG}-${VER}"
    
    printf "Removing old & Fetching '${PROG}-${VER}'...\n"
    rm -f "${OUTPROG}.pdf"
    rm -f "${OUTPROG}-cpp.pdf"
    rm -f "${OUTPROG}-libstdc++-manual.pdf.gz"
    rm -f "${OUTPROG}-libstdc++-api.pdf.gz"
    rm -f "${OUTPROG}-gccgo.pdf"
    
    wget \
	"https://gcc.gnu.org/onlinedocs/${PROG}-${VER}/gcc.pdf" \
	--quiet \
	--output-document "${OUTPROG}.pdf"
    ret_pdf=$?
    wget \
	"https://gcc.gnu.org/onlinedocs/${PROG}-${VER}/cpp.pdf" \
	--quiet \
	--output-document "${OUTPROG}-cpp.pdf"
    ret_pdf2=$?

    # wget \
    # 	"https://gcc.gnu.org/onlinedocs/gcc-11.3.0/libstdc++-manual.pdf.gz" \
    # 	-O - \
    # 	--quiet \
    # 	| gzip \
    # 	      --decompress \
    # 	       >test.pdf
    
    wget \
	"https://gcc.gnu.org/onlinedocs/${PROG}-${VER}/libstdc++-manual.pdf.gz" \
	--output-document - \
	--quiet \
	| gzip \
	      --decompress \
	      >"${OUTPROG}-libstdc++-manual.pdf"
    ret_pdf3=$?
    wget \
	"https://gcc.gnu.org/onlinedocs/${PROG}-${VER}/libstdc++-api.pdf.gz" \
	--output-document - \
	--quiet \
	| gzip \
	      --decompress \
	      >"${OUTPROG}-libstdc++-api.pdf"
    ret_pdf4=$?
    wget \
	"https://gcc.gnu.org/onlinedocs/${PROG}-${VER}/gccgo.pdf" \
	--quiet \
	--output-document "${OUTPROG}-gccgo.pdf"
    ret_pdf5=$?
    
    if [[ ${ret_pdf} -eq 0 ]] && [[ ${ret_pdf2} -eq 0 ]] && [[ ${ret_pdf3} -eq 0 ]] && [[ ${ret_pdf4} -eq 0 ]] && [[ ${ret_pdf5} -eq 0 ]]
    then
	printf "Fetching'${OUTPROG}': \e[32mGOOD\e[0m\n"
    else
	printf "Fetching'${OUTPROG}': \e[33mBAD\e[0m\n"
    fi
}


fetch_gnu1 "bash" "5.1"
fetch_gnu1 "make" "4.3"
fetch_gnu1 "coreutils" "9.1"
fetch_gnu1 "grep" "3.7"
fetch_gnu1 "sed" "4.8"
fetch_gnu1 "wget" "1.21.1-dirty"
fetch_gnu1 "diffutils" "3.8"
fetch_gnu1 "tar" "1.34"
fetch_gnu1 "gzip" "1.12"
fetch_gnu1 "automake" "1.16.5"
fetch_gnu1 "autoconf" "2.71"


fetch_gnu2 "as" "2.38"
fetch_gnu2 "bfd" "3.0"
fetch_gnu2 "binutils" "2.38"
fetch_gnu2 "ld" "2.38"
fetch_gnu2 "gprof" "2.38"


fetch_gnu3 "findutils" "4.9.0"


fetch_gnu4 "gnupg" "2.3.3"
# fetch_gnu4 "gcrypt" #Libgcrypt


fetch_gnu5 "libc" "2.35"
fetch_gnu5 "emacs" "28.1"

fetch_gnu6 "gdb" "13.0.50.20220626-git"

fetch_gnu7 "gcc" "11.3.0"
fetch_gnu7 "gcc" "8.5.0"

