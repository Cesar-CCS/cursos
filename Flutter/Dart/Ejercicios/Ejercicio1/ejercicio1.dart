// Enter your code here. Read input from STDIN. Print output to STDOUT
import 'dart:io';

void main() {
  var a = int.parse(stdin.readLineSync()!);
  var b = int.parse(stdin.readLineSync()!); 
    
  print(solveMeFirst(a,b));
}

int solveMeFirst(int a,int b) {
  if (a >= 1 && b >= 1 && a <= 1000 && b <= 1000) {
    return a + b;
  }
  return 0;
}