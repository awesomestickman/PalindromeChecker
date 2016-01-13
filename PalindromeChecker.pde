public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String simpleword = new String("");
  for(int i=0;i<word.length();i++){
      if(word.substring(i,i+1).equals(" ") ||
        word.substring(i,i+1).equals(",") ||
        word.substring(i,i+1).equals("!") ||
        word.substring(i,i+1).equals("'")){
      
    }
      else{
        simpleword=simpleword+word.substring(i,i+1);
       simpleword=simpleword.toLowerCase();
    }


  }
  String reversed = new String("");
  for(int i=simpleword.length()-1;i>=0;i--){
      
        reversed=reversed+simpleword.substring(i,i+1);
       
    


  }
   //System.out.println(simpleword);
   //System.out.println(reversed);
if(reversed.equals(simpleword)){

  return true;
}


  
  return false;
}

