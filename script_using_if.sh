#!/bin/bash
clear
echo
echo "what is student's name"
read a
echo
echo "Good morning $a"
echo
echo "is today school? (yes/no)"
read school

if [ $school == yes ]
then
        echo "get ready for school"
        

echo "Check whether school is half day or fullday? (half/full)"
read day
      if [ $day == full ]
      then
        echo "Take lunch"
       elif [ $day == half ]
        then
        echo "no lunch"
      fi
echo
echo "finding temperature to wear winter jacket (celsius)"
read temp
    if [ $temp -le 20 ]
    then
            echo "wear winter jack"
    elif [ $temp -gt 20 ]
    then
            echo "don't wear"
    fi
 echo
echo "check timetable whether today is any exam or class (exam/class)"
read timetable
    if [ $timetable == exam ]
    then
    echo "Take particular subject book"
    echo
     echo "check the subject of the exam(tamil/english/maths/science/social)"
     read subject
     if [ $subject == tamil ]
      then
        echo "Take tamil book"
       elif [ $subject == english ]
       then
        echo "Take english book"
       elif [ $subject == maths ]
       then
        echo "take maths book"
        elif [ $subject == science ]
        then
        echo "take science book"
        elif [ $subject == social ]
        then
        echo "take social book"
     fi
else [ $timetable == class ]
       echo "Take all books"
        fi
echo
echo "Check whether there is any extracurricular activity class (yes/no)"
read activityclass
    if [ $activityclass == yes ]
    then
    echo "extracurricular activity"
    echo
    echo "Find what's the class(sport/languagelearning/artandcrafts)"
   read find
   if [ $find == sport ]
   then
          echo " today's class is sport"
 elif [ $find == languagelearning ]
 then
        echo "today's class is language learning"
elif [ $find == artandcrafts ]
    then
    echo "today's class is art and crafts"
    fi
else [ $activityclass == no ]

echo "No activity class"
    fi
echo
echo "Have u taken id card? (yes/no)"
read idcard
if [ $idcard == yes ]
then
        echo "yeah i have taken id card"
else [ $idcard == no ]
        echo "no i haven't taken"
fi
echo
echo "check whether u have finished homework or not? (yes/no)"
read homework
 if [ $homework == yes ]
 then
         echo " homework is finished"
 else [ $homework == no ]
         echo "finish the homework"
 fi


else [ $school == no ]
        echo "Happy holiday"
fi
ls


                                                                                                                                                                                                                                                                                                            
