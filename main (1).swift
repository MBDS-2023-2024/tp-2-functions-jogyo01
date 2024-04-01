func printFirstXNumbers(ofType type: String, count x: Int) {
  print("Les \(x) premiers nombres \(type) sont :")
  var number = 0
  var countPrinted = 0

  while countPrinted < x {
      if type == "pairs" {
          if number % 2 == 0 {
              print(number, terminator: " ")
              countPrinted += 1
          }
      } else if type == "impairs" {
          if number % 2 != 0 {
              print(number, terminator: " ")
              countPrinted += 1
          }
      } else {
          print("Type non reconnu. Veuillez choisir 'pairs' ou 'impairs'.")
          return
      }
      number += 1
  }
}

// Utilisation de la fonction pour afficher les 10 premiers nombres pairs
printFirstXNumbers(ofType: "pairs", count: 10)
print() // Saut de ligne

// Utilisation de la fonction pour afficher les 10 premiers nombres impairs
printFirstXNumbers(ofType: "impairs", count: 10)





func printFibonacciNumbers(count x: Int) {
  var fibonacciSequence = [Int]()

  // Ajout des deux premiers nombres de la suite Fibonacci
  fibonacciSequence.append(0)
  fibonacciSequence.append(1)

  // Calcul et ajout des nombres suivants de la suite Fibonacci
  for i in 2..<x {
      let nextFibonacciNumber = fibonacciSequence[i - 1] + fibonacciSequence[i - 2]
      fibonacciSequence.append(nextFibonacciNumber)
  }

  // Affichage des x premiers nombres de la suite Fibonacci
  print("Les \(x) premiers nombres de la suite Fibonacci sont :")
  for number in fibonacciSequence {
      print(number, terminator: " ")
  }
}

// Utilisation de la fonction pour afficher les 10 premiers nombres de la suite Fibonacci
printFibonacciNumbers(count: 10)

func factorial(ofNumber number: Int = 10) -> Int {
  if number == 0 {
      return 1
  }
  var result = 1
  for i in 1...number {
      result *= i
  }
  return result
}


// Exemple d'utilisation sans spécifier de nombre (utilisation de 10 par défaut)
let result2 = factorial()
print("Factoriel de 10:", result2)

func isPrime(_ number: Int) -> Bool {
  if number <= 1 {
      return false
  }
  for i in 2..<number {
      if number % i == 0 {
          return false
      }
  }
  return true
}

func printFirstXPrimes(count x: Int) {
  print("Les \(x) premiers nombres premiers sont :")
  var countPrinted = 0
  var currentNumber = 2

  while countPrinted < x {
      if isPrime(currentNumber) {
          print(currentNumber, terminator: " ")
          countPrinted += 1
      }
      currentNumber += 1
  }
}

// Utilisation de la fonction pour afficher les 10 premiers nombres premiers
printFirstXPrimes(count: 10)
