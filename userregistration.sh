#!/bin/bash -x
#Welcome to User Registration
#UC1
firstname(){

    pat="^([A-Z]{1}[a-zA-Z]{2,})$"     #minimum 3 characters
    echo "Write Firstname"
    read Fname
    if [[ $Fname =~ $pat ]]
    then
         echo "Firstname matches"
    else
         echo "Firstname does not matches"
    fi
}
firstname

#UC2
lastname(){

    pat="^([A-Z]{1}[a-zA-Z]{2,})$" #minimum 3 characters
    echo "Write Lastname"
    read Lname
    if [[ $Lname =~ $pat ]]
    then
         echo "Lastname matches"
    else
         echo "Lastname does not matches"
    fi
}
lastname

#UC3
validEmail(){
           #abc.xyz@bl.co.in
           #all the email formats are covered in this use case
    pat="^(([A-Za-z0-9]+((\.|\-|\_|\+)?[A-Za-z0-9]?)*[A-Za-z0-9]+)|[A-Za-z0-9]+)@(([A-Za-z0-9]+)+((\.|\-|\_)?([A-Za-z0-9]+)+)*)+\.([A-Za-z]{2,})+$"
    echo "Write an email address"
    read email
    if [[ $email =~ $pat ]]
    then
         echo "Its a valid email address"
    else
         echo "Its not a valid email address"
    fi
}
validEmail

#UC4
mobileFormat(){
      pat="^[0-9]{2}[[:space:]][0-9]{10}$"
      echo "Enter a mobile number"
      read number
      if [[ $number =~ $pat ]]
      then
           echo "The entered number is valid"
      else
           echo "The entered number is invalid"
fi
}
mobileFormat

#UC5
#all password conditions are covered in this use case
passwordFormat(){
                pat ="^(?=.*?[A-Z])([a-z]*)(?=.*?[0-9])(?=.*?[#@$%&!]).{8,}$"
                 echo "Enter an email address"
                 read password
                 if [[ $password =~ $pat ]]
                 then
                     echo "The entered password is valid"
                 else
                     echo "The entered password is not valid"

                 fi

}
passwordFormat()
