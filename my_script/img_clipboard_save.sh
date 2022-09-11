#! /bin/sh


function exists_in_list() {
    LIST=$1
    DELIMITER=$2
    VALUE=$3
    echo $LIST | tr "$DELIMITER" '\n' | grep -F -q -x "$VALUE"
}

path=$1
name=$2"-"
ext=$3


file_list=$(ls $path)  

i=0
while  exists_in_list "$file_list" " " $name$i$ext; do
    let i++
done


spectacle -bcr -o  $path/$name$i$ext


exit 0