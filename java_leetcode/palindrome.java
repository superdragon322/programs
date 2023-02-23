public class palindrome {
  public static boolean isPalindrome(int x) {
    if (Math.floorDiv(x, 10) == 0) {
      return true;
    }
    if (x < 0 || x % 10 == 0) {
            return false;
    } else {
            return true;
        }
  }

  public static void main(String[] args) {
    System.out.println(isPalindrome(0));    
  }
}
