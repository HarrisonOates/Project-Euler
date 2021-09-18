using System;
class Euler2 {

  public static double fib(int n){
  // Binet's Fibonacci formula
  double Phi = ( (double) (Math.Sqrt(5) + 1)/2);
  return (Math.Pow(Phi, n) - Math.Pow(-Phi, -n))/Math.Sqrt(5);
  }
  
  public static void Main (string[] args) {
  double summation = 0;
  // Sum of even valued terms below 4,000,000
  for (int i = 0; fib(i) < 4000000; i++){
    if ((Math.Round(fib(i)) % 2) == 0){
      summation += fib(i);
    }
  }
  Console.WriteLine(summation);
  }

}
