/**
*
* @Name : isPrime/Check.cpp
* @Version : 1.0
* @Programmer : Max
* @Date : 2019-04-25
* @Released under : https://github.com/BaseMax/isPrime/blob/master/LICENSE
* @Repository : https://github.com/BaseMax/isPrime
*
**/
#include <iostream>
#include <iostream>
// using namespace std;
using std::cin;
using std::cout;

bool isPrime(int number) {
	if(number <= 1)
		return false;
	if(number % 2 == 0 && number > 2)
		return false;
	for(int i = 3; i < number / 2; i+= 2) {
		if(number % i == 0)
			return false;
	}
	return true;
}

int main() {
	int number;
	cin >> number;
	for(int index=1; index<=number; index++) {
		if(isPrime(index)) {
			cout << index << "\n";
		}
	}
	return 0;
}


bool isPrime(int number) {
	if(number <= 1)
		return false;
	if(number % 2 == 0 && number > 2)
		return false;
	for(int i = 3; i < number / 2; i+= 2) {
		if(number % i == 0)
			return false;
	}
	return true;
}

int main() {
	int number;
	cin >> number;
	for(int index=1; index<=number; index++) {
		if(isPrime(index)) {
			cout << index << "\n";
		}
	}
	return 0;
}
