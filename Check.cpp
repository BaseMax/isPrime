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
using namespace std;

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
