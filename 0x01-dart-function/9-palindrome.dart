bool isPalindrome(String s) {
  if (s.length < 3 )
    return false;
  String reverse = "";

  for (var i = s.length - 1; i >= 0; i--) {
	reverse += s[i];
  }
  if (reverse == s)
    return true;
  else
    return false;
}