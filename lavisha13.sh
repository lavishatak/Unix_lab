EXCERCISE PROGRAM:
1)WRITE A MENU SCRIPT TO PERFORM FILE OPERATIONS USING SELECT STATEMENT? 
file_op="copy remove move rename quit"
PS3="select file_op:"
        copy()
        {
            echo "enter the file name to copy"
            read f1
            echo "enter the file name to which the content has to be coppied"
            read f2
            if [ -e $f1 ]
            then
                   cp $f1 $f2
            else
                  echo "file not found"
            fi
        }
        remove()
        {
            echo "enter the file name to be removed"
            read r1
            if [-f $r1 ]
            then
            rm -i $r1
            else
		echo "file doesnt exit"
            fi
        }
        diff1()
        {
            echo "enter the file name to be differentiated"
            read f1
            echo "enter the second file name"
            read f2
            if [-f $f1 ]
            then diff $f1 $f2
            else
                    echo "the file doesnot exist"
            fi
        }
        rename()
        {
             echo "enter the file name to be renamed"
             read f1
             echo "enter the new name for the file"
             read f2
             if [-f $f1 ]
	     then
                mv $f1 $f2
             else
                    echo "file is invalid"
              fi
        }
        quit()
        {
        if [ $operation == "quit" ]
        then
        break
        fi
        }
select operations in $file_op
do
        copy()
        remove()
        diff1()
        rename()
        quit()
done

                                                              

                     
