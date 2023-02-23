touch $1.java
echo "class $1 {
  public static void main(String[] args) {
    System.out.println(\"hello world\");
  }
}" >> $1.java
rm run.sh
touch run.sh
echo "javac $1.java
java $1.java" >> run.sh
