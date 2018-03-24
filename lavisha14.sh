EXCERCISE PROGRAM:
1)WRITE A MENU SCRIPT TO PERFORM FILE OPERATIONS USNG CASE STATEMENT?
echo "menu:"
echo "1.copy the fle"
echo "2.remove a file"
echo "3.move a file"
echo "4.rename a file"
echo "5.quit"
echo "enter your choice"
read choice
case $choice in
        1)
                echo "enter the file name to copy"
                read f1
                echo "enter the destination file name"
                read f2
                if [ -d $f1 ]
                then
                        cp $f1 $f2
                else
                         echo "file doesnot exist"
                fi
        ;;
        2)
                echo "enter the file name to be removed"
 		read r1
                if [ -f $r1 ]
                then
                        echo "file doesnot exist"
                fi
        ;;
        3)
                echo "enter the file name to be moved:"
                read f1
                echo"enter the destination"
                read f2
                if [ -f $f1 ]
                then mv $f1 $f2
                else
                echo "file doesnot exist"
                fi
        ;;
        4)
                echo "enter the filename to be renamed"
                read f1
                echo "enter the new name of the file"
                read f2
                if [ -f $f1 ]
                then
                        mv $f1 $f2
                else
                        echo "file doesnot exist"
                fi
        ;;
        5)
                echo "exit the program"
                exit
        ;;
        *)
                echo "sorry!! you have entered a wrong choice"
        ;;
esac
                        

