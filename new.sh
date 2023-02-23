#!/bin/bash

if [ $1 == "java" ]
then
  mkdir $2
  cd $2
  touch $2.java
  echo "public class $2 {
    public static void main(String[] args) {
      System.out.println(\"hello world\");
    }
  }" >> $2.java

  touch run.sh
  echo "javac $2.java
  java $2.java" >> run.sh
  touch ide.sh
  echo "nvim $2.java -c vsplit -c terminal -c wincmd h -c vertical resize +40 -c NERDTree" >> ide.sh

fi

if [ $1 == "python" ]
then
  mkdir $2
  cd $2
  touch main.py
  echo "print(\"hello world\")" >> main.py
  touch run.sh
  echo "python3 -m py_compile main.py
  python3 main.py" >> run.sh
  touch ide.sh
  echo "nvim main.py -c vsplit -c terminal -c wincmd h -c vertical resize +40 -c NERDTree" >> ide.sh
fi
