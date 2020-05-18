{ for i in $1; do ffmpeg -i "${i}" 2>&1 | grep Duration | cut -d ' ' -f 4 | sed s/,// | xargs -I XT echo -e "XT \t ${i}"; done } | sort -n |column -s $'\t' -t
