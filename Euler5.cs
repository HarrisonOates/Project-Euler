/*
Work in progress.
*/

using System;
using System.Collections.Generic;
using System.Linq;

class Euler5 {
  public static int Euclid(int p, int q){
     /* Using the Euclidian Algorithm described at https://en.wikipedia.org/wiki/Euclidean_algorithm#Description
     Finds GCD of a number
     */ 
    if (q = 0){
      return p;
    }
    else {
      return Euclid(q, p % q);
    }
  }
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
    /* Have to find the smallest natural number evenly divisible by all integers from 1 to 20. 
    The GCD can be found by finding the prime factors of a number and then multiplying them by the most number of times they appear. We proceed with the function Primer() that returns the prime factors of a number.
    e.g 
    Primer(30) = {2,3,5}
    Primer(45) = {3,3,5}
    Therefore the LCM is 2 * 3^2 * 5
    As seen at http://www.math.com/school/subject1/lessons/S1U3L3DP.html
  */
  for (int i = 1; i <= 20; i++){
    // Converts each element of Primer() to a string, and inserts a null character at the end of each so list comprehensions can be used afterwards.
    List<char> num = Convert.ToString(Primer(i));
    num.Add('\0');
    }
  }


  }
}
