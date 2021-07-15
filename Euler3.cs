using System;
using System.Collections.Generic;
using System.Linq;
class Euler3 {
  public static List<long> Primer(long n){
  // Finds prime factors and stores them in a list, inc. duplicates.
  	List<long>factors = new List<long>();
		for (long div = 2; div <= n; div++){
		while (n % div == 0){
			factors.Add(div);
			n /= div;
			}
		}
	return factors;
  }

  public static void Main (string[] args) {
	long Euler3 = 600851475143;
	Console.WriteLine(Primer(Euler3).Max());
  	}
}
