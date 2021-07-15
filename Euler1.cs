using System;

class Euler1 {
  public static void Main (string[] args) {
    // Calculate the sum of all multiples of three and five below 1000
  
  int Summation = 0;
  for (int i = 0; i < 1000; i++){
    if (i % 3 == 0 || i % 5 == 0){
      Summation += i;
    }
  }
  Console.WriteLine(Summation);
  }
}
