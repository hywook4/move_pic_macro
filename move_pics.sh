
folder=$PWD/
from=$PWD/fromhere
to=$PWD/tohere

shopt -s nullglob

for dir1 in $from/*
do
    dir2=${dir1##*/}
    dir2=$PWD/tohere/$dir2

    if [ -d "$dir1" ]
    then
        for pic in $dir1/*.[jJ][pP][gG]
        do
            file=${pic##*/}
            move=$dir2/$file
            echo $pic
            echo $move

            cp "$pic" "$move"
        done
        
        for pic in $dir1/*.[pP][nN][gG]
        do
            file=${pic##*/}
            move=$dir2/$file
            echo $pic
            echo $move

            cp "$pic" "$move"
        done

        for pic in $dir1/*.[gG][iI][fF]
        do 
            file=${pic##*/}
            move=$dir2/$file
            echo $pic
            echo $move

            cp "$pic" "$move"
        done

        for pic in $dir1/*.[jJ][pP][eE][gG]
        do
             file=${pic##*/}
             move=$dir2/$file
             echo $pic
             echo $move

             cp "$pic" "$move"
        done
        
    fi

done
